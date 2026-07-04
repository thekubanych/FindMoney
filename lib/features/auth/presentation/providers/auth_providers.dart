import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/datasources/auth_remote_datasource.dart';
import '../../data/repositories/auth_repository_impl.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/usecases/auth_usecases.dart';
import '../../../../core/network/dio_client.dart';

part 'auth_providers.g.dart';

// ─── Infrastructure ───────────────────────────────────────────────────────────

@riverpod
AuthRemoteDataSource authRemoteDataSource(Ref ref) =>
    AuthRemoteDataSource(ref.watch(dioClientProvider));

@riverpod
AuthRepository authRepository(Ref ref) => AuthRepositoryImpl(
      dataSource: ref.watch(authRemoteDataSourceProvider),
      storage: ref.watch(secureStorageProvider),
    );

// ─── Use cases ────────────────────────────────────────────────────────────────

@riverpod
LoginUseCase loginUseCase(Ref ref) =>
    LoginUseCase(ref.watch(authRepositoryProvider));

@riverpod
RegisterUseCase registerUseCase(Ref ref) =>
    RegisterUseCase(ref.watch(authRepositoryProvider));

@riverpod
LoginWithGoogleUseCase loginWithGoogleUseCase(Ref ref) =>
    LoginWithGoogleUseCase(ref.watch(authRepositoryProvider));

@riverpod
LogoutUseCase logoutUseCase(Ref ref) =>
    LogoutUseCase(ref.watch(authRepositoryProvider));

@riverpod
RestoreSessionUseCase restoreSessionUseCase(Ref ref) =>
    RestoreSessionUseCase(ref.watch(authRepositoryProvider));

// ─── Auth state ───────────────────────────────────────────────────────────────

enum AuthStatus { initial, loading, authenticated, unauthenticated }

class AuthState {
  final AuthStatus status;
  final User? user;
  final String? error;

  const AuthState({
    this.status = AuthStatus.initial,
    this.user,
    this.error,
  });

  AuthState copyWith({
    AuthStatus? status,
    User? user,
    String? error,
  }) =>
      AuthState(
        status: status ?? this.status,
        user: user ?? this.user,
        error: error,
      );

  bool get isAuthenticated => status == AuthStatus.authenticated;
  bool get isLoading => status == AuthStatus.loading;
}

@riverpod
class AuthNotifier extends _$AuthNotifier {
  @override
  AuthState build() {
    // Kick off session restore on init
    Future.microtask(_restoreSession);
    return const AuthState();
  }

  // ── Session restore (called on app start) ────────────────────────────────

  Future<void> _restoreSession() async {
    state = state.copyWith(status: AuthStatus.loading);
    try {
      final useCase = ref.read(restoreSessionUseCaseProvider);
      final hasSession = await useCase.hasSession();

      if (!hasSession) {
        state = state.copyWith(status: AuthStatus.unauthenticated);
        return;
      }

      final result = await useCase();
      state = result.fold(
        (e) => state.copyWith(
          status: AuthStatus.unauthenticated,
          error: e.message,
        ),
        (user) => state.copyWith(
          status: AuthStatus.authenticated,
          user: user,
        ),
      );
    } catch (_) {
      state = state.copyWith(status: AuthStatus.unauthenticated);
    }
  }

  // ── Login ─────────────────────────────────────────────────────────────────

  Future<void> login({required String email, required String password}) async {
    state = state.copyWith(status: AuthStatus.loading, error: null);
    final result = await ref
        .read(loginUseCaseProvider)
        .call(email: email, password: password);

    state = result.fold(
      (e) => state.copyWith(
        status: AuthStatus.unauthenticated,
        error: e.message,
      ),
      (authResult) => state.copyWith(
        status: AuthStatus.authenticated,
        user: authResult.user,
      ),
    );
  }

  // ── Register ──────────────────────────────────────────────────────────────

  Future<void> register({
    required String email,
    required String password,
    required String name,
  }) async {
    state = state.copyWith(status: AuthStatus.loading, error: null);
    final result = await ref.read(registerUseCaseProvider).call(
          email: email,
          password: password,
          name: name,
        );

    state = result.fold(
      (e) => state.copyWith(
        status: AuthStatus.unauthenticated,
        error: e.message,
      ),
      (authResult) => state.copyWith(
        status: AuthStatus.authenticated,
        user: authResult.user,
      ),
    );
  }

  // ── Google ────────────────────────────────────────────────────────────────

  Future<void> loginWithGoogle() async {
    state = state.copyWith(status: AuthStatus.loading, error: null);
    final result = await ref.read(loginWithGoogleUseCaseProvider).call();

    state = result.fold(
      (e) => state.copyWith(
        status: AuthStatus.unauthenticated,
        error: e.message,
      ),
      (authResult) => state.copyWith(
        status: AuthStatus.authenticated,
        user: authResult.user,
      ),
    );
  }

  // ── Logout ────────────────────────────────────────────────────────────────

  Future<void> logout() async {
    await ref.read(logoutUseCaseProvider).call();
    state = const AuthState(status: AuthStatus.unauthenticated);
  }

  void clearError() => state = state.copyWith(error: null);
}

// Convenience provider for current user
@riverpod
User? currentUser(Ref ref) {
  return ref.watch(authNotifierProvider).user;
}
