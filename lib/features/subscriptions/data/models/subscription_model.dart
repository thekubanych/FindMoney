import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../domain/entities/subscription.dart';

part 'subscription_model.freezed.dart';
part 'subscription_model.g.dart';
part 'subscription_datasource.g.dart';

@freezed
class SubscriptionStatusModel with _$SubscriptionStatusModel {
  const factory SubscriptionStatusModel({
    @JsonKey(name: 'plan_type') required String planType,
    required String status,
    @JsonKey(name: 'expires_at') String? expiresAt,
    String? store,
    @JsonKey(name: 'will_renew') bool? willRenew,
  }) = _SubscriptionStatusModel;

  factory SubscriptionStatusModel.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionStatusModelFromJson(json);
}

@freezed
class VerifyPurchaseDto with _$VerifyPurchaseDto {
  const factory VerifyPurchaseDto({
    required String store, // apple | google
    @JsonKey(name: 'product_id') required String productId,
    @JsonKey(name: 'purchase_token') required String purchaseToken,
  }) = _VerifyPurchaseDto;

  factory VerifyPurchaseDto.fromJson(Map<String, dynamic> json) =>
      _$VerifyPurchaseDtoFromJson(json);
}

extension SubscriptionStatusModelMapper on SubscriptionStatusModel {
  SubscriptionStatus toDomain() => SubscriptionStatus(
        planType: planType,
        status: status,
        expiresAt: expiresAt != null ? DateTime.parse(expiresAt!) : null,
        store: store,
        willRenew: willRenew,
      );
}

@RestApi()
abstract class SubscriptionDataSource {
  factory SubscriptionDataSource(Dio dio, {String baseUrl}) =
      _SubscriptionDataSource;

  @GET('/subscriptions/status')
  Future<SubscriptionStatusModel> getStatus();

  @POST('/subscriptions/verify')
  Future<SubscriptionStatusModel> verify(@Body() VerifyPurchaseDto dto);

  @POST('/subscriptions/cancel')
  Future<void> cancel();
}
