import 'package:dartz/dartz.dart';
import '../entities/user.dart';
import '../repositories/auth_repository.dart';
import '../../../../core/network/dio_client.dart';

class LoginUseCase {
  final AuthRepository _repository;
  const LoginUseCase(this._repository);

  Future<Either<ApiException, AuthResult>> call({
    required String email,
    required String password,
  }) =>
      _repository.login(email: email, password: password);
}

class RegisterUseCase {
  final AuthRepository _repository;
  const RegisterUseCase(this._repository);

  Future<Either<ApiException, AuthResult>> call({
    required String email,
    required String password,
    required String name,
  }) =>
      _repository.register(email: email, password: password, name: name);
}

class LoginWithGoogleUseCase {
  final AuthRepository _repository;
  const LoginWithGoogleUseCase(this._repository);

  Future<Either<ApiException, AuthResult>> call() =>
      _repository.loginWithGoogle();
}

class LogoutUseCase {
  final AuthRepository _repository;
  const LogoutUseCase(this._repository);

  Future<Either<ApiException, void>> call() => _repository.logout();
}

class GetCurrentUserUseCase {
  final AuthRepository _repository;
  const GetCurrentUserUseCase(this._repository);

  Future<Either<ApiException, User>> call() => _repository.getCurrentUser();
}

class RestoreSessionUseCase {
  final AuthRepository _repository;
  const RestoreSessionUseCase(this._repository);

  Future<bool> hasSession() => _repository.hasValidSession();

  Future<Either<ApiException, User>> call() => _repository.restoreSession();
}
