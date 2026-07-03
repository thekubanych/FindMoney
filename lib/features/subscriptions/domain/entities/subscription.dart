import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription.freezed.dart';

@freezed
class SubscriptionStatus with _$SubscriptionStatus {
  const factory SubscriptionStatus({
    required String planType, // free, premium, pro
    required String status, // active, expired, cancelled, none
    DateTime? expiresAt,
    String? store, // apple, google
    bool? willRenew,
  }) = _SubscriptionStatus;
}

@freezed
class PlanOption with _$PlanOption {
  const factory PlanOption({
    required String id,
    required String name,
    required double monthlyPrice,
    required List<String> features,
    required bool isPopular,
  }) = _PlanOption;
}

// Static plan definitions matching the TZ
class PlanCatalog {
  PlanCatalog._();

  static const free = PlanOption(
    id: 'free',
    name: 'FREE',
    monthlyPrice: 0,
    features: [
      '3 AI analyses/day',
      'Basic analytics',
      'Manual input only',
    ],
    isPopular: false,
  );

  static const premium = PlanOption(
    id: 'premium',
    name: 'PREMIUM',
    monthlyPrice: 7.99,
    features: [
      'Unlimited AI',
      'Emotional detection',
      'Weekly reports',
      'Predictions',
      'OCR receipts',
    ],
    isPopular: true,
  );

  static const pro = PlanOption(
    id: 'pro',
    name: 'PRO',
    monthlyPrice: 19.99,
    features: [
      'Hard Truth Mode',
      'Future Simulation',
      'Behavioral Psychology Reports',
      'Debt Prediction',
      'Advanced AI',
    ],
    isPopular: false,
  );

  static const all = [free, premium, pro];
}
