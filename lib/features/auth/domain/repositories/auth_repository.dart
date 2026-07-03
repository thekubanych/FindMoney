import 'package:dartz/dartz.dart';
import '../entities/user.dart';
import '../../../../core/network/dio_client.dart';

abstract class AuthRepository {
  /// Login with email + password
  Future<Either<ApiException, AuthResult>> login({
    required String email,
    required String password,
  });

  /// Register new account
  Future<Either<ApiException, AuthResult>> register({
    required String email,
    required String password,
    required String name,
  });

  /// Sign in with Google
  Future<Either<ApiException, AuthResult>> loginWithGoogle();

  /// Logout — clear tokens
  Future<Either<ApiException, void>> logout();

  /// Get current user from server
  Future<Either<ApiException, User>> getCurrentUser();

  /// Check if user has valid session (tokens in storage)
  Future<bool> hasValidSession();

  /// Restore session — try to get current user using stored token
  Future<Either<ApiException, User>> restoreSession();
}
