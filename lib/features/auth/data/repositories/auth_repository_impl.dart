import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_datasource.dart';
import '../models/auth_models.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/network/dio_client.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _dataSource;
  final FlutterSecureStorage _storage;
  final GoogleSignIn _googleSignIn;

  AuthRepositoryImpl({
    required AuthRemoteDataSource dataSource,
    required FlutterSecureStorage storage,
    GoogleSignIn? googleSignIn,
  })  : _dataSource = dataSource,
        _storage = storage,
        _googleSignIn = googleSignIn ??
            GoogleSignIn(
              scopes: ['email', 'profile'],
            );

  @override
  Future<Either<ApiException, AuthResult>> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _dataSource.login(
        LoginRequestModel(email: email, password: password),
      );
      await _saveTokens(response.accessToken, response.refreshToken);
      return Right(response.toDomain());
    } on DioException catch (e) {
      return Left(ApiException.fromDioException(e));
    }
  }

  @override
  Future<Either<ApiException, AuthResult>> register({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final response = await _dataSource.register(
        RegisterRequestModel(email: email, password: password, name: name),
      );
      await _saveTokens(response.accessToken, response.refreshToken);
      return Right(response.toDomain());
    } on DioException catch (e) {
      return Left(ApiException.fromDioException(e));
    }
  }

  @override
  Future<Either<ApiException, AuthResult>> loginWithGoogle() async {
    try {
      final account = await _googleSignIn.signIn();
      if (account == null) {
        return Left(const ApiException(
          statusCode: 0,
          message: 'Google sign-in cancelled',
        ));
      }

      final auth = await account.authentication;
      final idToken = auth.idToken;
      if (idToken == null) {
        return Left(const ApiException(
          statusCode: 0,
          message: 'Failed to get Google ID token',
        ));
      }

      final response = await _dataSource.loginWithGoogle(
        GoogleAuthRequestModel(idToken: idToken),
      );
      await _saveTokens(response.accessToken, response.refreshToken);
      return Right(response.toDomain());
    } on DioException catch (e) {
      return Left(ApiException.fromDioException(e));
    } catch (e) {
      return Left(ApiException(statusCode: 0, message: e.toString()));
    }
  }

  @override
  Future<Either<ApiException, void>> logout() async {
    try {
      await _dataSource.logout();
    } catch (_) {
      // Best-effort logout — always clear local tokens
    }
    await _clearTokens();
    await _googleSignIn.signOut();
    return const Right(null);
  }

  @override
  Future<Either<ApiException, User>> getCurrentUser() async {
    try {
      final model = await _dataSource.getCurrentUser();
      return Right(model.toDomain());
    } on DioException catch (e) {
      return Left(ApiException.fromDioException(e));
    }
  }

  @override
  Future<bool> hasValidSession() async {
    final token = await _storage.read(key: AppConstants.accessTokenKey);
    final refresh = await _storage.read(key: AppConstants.refreshTokenKey);
    return token != null && refresh != null;
  }

  @override
  Future<Either<ApiException, User>> restoreSession() async {
    final hasSession = await hasValidSession();
    if (!hasSession) {
      return Left(const ApiException(
        statusCode: 401,
        message: 'No valid session',
      ));
    }
    return getCurrentUser();
  }

  // ─── Helpers ─────────────────────────────────────────────────────────────

  Future<void> _saveTokens(String access, String refresh) async {
    await Future.wait([
      _storage.write(key: AppConstants.accessTokenKey, value: access),
      _storage.write(key: AppConstants.refreshTokenKey, value: refresh),
    ]);
  }

  Future<void> _clearTokens() async {
    await Future.wait([
      _storage.delete(key: AppConstants.accessTokenKey),
      _storage.delete(key: AppConstants.refreshTokenKey),
      _storage.delete(key: AppConstants.userIdKey),
    ]);
  }
}
