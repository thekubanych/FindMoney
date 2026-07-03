import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String email,
    required String name,
    String? avatarUrl,
    required String planType,
    required bool hardTruthMode,
    required DateTime createdAt,
  }) = _User;

  const User._();

  bool get isPremium => planType == 'premium' || planType == 'pro';
  bool get isPro => planType == 'pro';
  bool get isFree => planType == 'free';

  String get planLabel {
    switch (planType) {
      case 'premium':
        return 'PREMIUM';
      case 'pro':
        return 'PRO';
      default:
        return 'FREE';
    }
  }
}

@freezed
class AuthTokens with _$AuthTokens {
  const factory AuthTokens({
    required String accessToken,
    required String refreshToken,
  }) = _AuthTokens;
}

@freezed
class AuthResult with _$AuthResult {
  const factory AuthResult({
    required User user,
    required AuthTokens tokens,
  }) = _AuthResult;
}
