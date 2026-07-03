import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import '../../data/models/subscription_model.dart';
import '../../domain/entities/subscription.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/network/dio_client.dart';

part 'subscription_providers.g.dart';

@riverpod
SubscriptionDataSource subscriptionDataSource(Ref ref) =>
    SubscriptionDataSource(ref.watch(dioClientProvider));

@riverpod
class SubscriptionNotifier extends _$SubscriptionNotifier {
  @override
  Future<SubscriptionStatus> build() => _fetch();

  Future<SubscriptionStatus> _fetch() async {
    final ds = ref.read(subscriptionDataSourceProvider);
    try {
      final model = await ds.getStatus();
      return model.toDomain();
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  /// Purchase a plan via RevenueCat (in_app_purchase / purchases_flutter)
  Future<void> purchase(String planId) async {
    state = const AsyncLoading();
    try {
      final productId = _productIdFor(planId);
      final offerings = await Purchases.getOfferings();
      final package = offerings.current?.availablePackages.firstWhere(
        (p) => p.storeProduct.identifier == productId,
        orElse: () => offerings.current!.availablePackages.first,
      );

      if (package == null) {
        throw Exception('Plan not available in store');
      }

      final purchaseResult = await Purchases.purchasePackage(package);

      // Verify on backend
      final ds = ref.read(subscriptionDataSourceProvider);
      final model = await ds.verify(
        VerifyPurchaseDto(
          store: 'apple', // or detect platform
          productId: productId,
          purchaseToken:
              purchaseResult.customerInfo.originalAppUserId,
        ),
      );

      state = AsyncData(model.toDomain());
    } catch (e) {
      state = AsyncError(e, StackTrace.current);
      rethrow;
    }
  }

  Future<void> cancel() async {
    final ds = ref.read(subscriptionDataSourceProvider);
    try {
      await ds.cancel();
      state = await AsyncValue.guard(_fetch);
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(_fetch);
  }

  String _productIdFor(String planId) {
    switch (planId) {
      case 'pro':
        return AppConstants.proMonthlyApple;
      case 'premium':
        return AppConstants.premiumMonthlyApple;
      default:
        throw ArgumentError('Cannot purchase free plan');
    }
  }
}
