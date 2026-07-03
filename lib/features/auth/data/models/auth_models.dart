import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/user.dart';

part 'auth_models.freezed.dart';
part 'auth_models.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String email,
    required String name,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    @JsonKey(name: 'plan_type') required String planType,
    @JsonKey(name: 'hard_truth_mode') @Default(false) bool hardTruthMode,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class LoginRequestModel with _$LoginRequestModel {
  const factory LoginRequestModel({
    required String email,
    required String password,
  }) = _LoginRequestModel;

  factory LoginRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestModelFromJson(json);
}

@freezed
class RegisterRequestModel with _$RegisterRequestModel {
  const factory RegisterRequestModel({
    required String email,
    required String password,
    required String name,
  }) = _RegisterRequestModel;

  factory RegisterRequestModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestModelFromJson(json);
}

@freezed
class AuthResponseModel with _$AuthResponseModel {
  const factory AuthResponseModel({
    required UserModel user,
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
  }) = _AuthResponseModel;

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseModelFromJson(json);
}

@freezed
class GoogleAuthRequestModel with _$GoogleAuthRequestModel {
  const factory GoogleAuthRequestModel({
    @JsonKey(name: 'id_token') required String idToken,
  }) = _GoogleAuthRequestModel;

  factory GoogleAuthRequestModel.fromJson(Map<String, dynamic> json) =>
      _$GoogleAuthRequestModelFromJson(json);
}

// ─── Mappers ──────────────────────────────────────────────────────────────────

extension UserModelMapper on UserModel {
  User toDomain() => User(
        id: id,
        email: email,
        name: name,
        avatarUrl: avatarUrl,
        planType: planType,
        hardTruthMode: hardTruthMode,
        createdAt: DateTime.parse(createdAt),
      );
}

extension AuthResponseMapper on AuthResponseModel {
  AuthResult toDomain() => AuthResult(
        user: user.toDomain(),
        tokens: AuthTokens(
          accessToken: accessToken,
          refreshToken: refreshToken,
        ),
      );
}
