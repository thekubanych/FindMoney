import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../constants/app_constants.dart';

part 'dio_client.g.dart';

@riverpod
Dio dioClient(Ref ref) {
  final storage = ref.watch(secureStorageProvider);
  return DioClient(storage).dio;
}

@riverpod
FlutterSecureStorage secureStorage(Ref ref) {
  return const FlutterSecureStorage(
    aOptions: AndroidOptions(encryptedSharedPreferences: true),
    iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock),
  );
}

class DioClient {
  late final Dio dio;
  final FlutterSecureStorage _storage;

  DioClient(this._storage) {
    dio = Dio(
      BaseOptions(
        baseUrl: AppConstants.baseUrl,
        connectTimeout: AppConstants.connectTimeout,
        receiveTimeout: AppConstants.receiveTimeout,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    dio.interceptors.add(_AuthInterceptor(_storage, dio));
    if (kDebugMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: false,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
        ),
      );
    }
  }
}

class _AuthInterceptor extends Interceptor {
  final FlutterSecureStorage _storage;
  final Dio _dio;
  bool _isRefreshing = false;
  final List<RequestOptions> _pendingRequests = [];

  _AuthInterceptor(this._storage, this._dio);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // Skip auth for public endpoints
    if (_isPublicEndpoint(options.path)) {
      return handler.next(options);
    }

    final token = await _storage.read(key: AppConstants.accessTokenKey);
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == 401) {
      if (_isRefreshing) {
        _pendingRequests.add(err.requestOptions);
        return;
      }

      _isRefreshing = true;
      try {
        final refreshed = await _refreshToken();
        if (refreshed) {
          // Retry original request
          final newToken =
              await _storage.read(key: AppConstants.accessTokenKey);
          err.requestOptions.headers['Authorization'] = 'Bearer $newToken';
          final response = await _dio.fetch(err.requestOptions);
          handler.resolve(response);

          // Retry pending requests
          for (final req in _pendingRequests) {
            req.headers['Authorization'] = 'Bearer $newToken';
            await _dio.fetch(req);
          }
          _pendingRequests.clear();
        } else {
          await _clearTokens();
          handler.next(err);
        }
      } catch (e) {
        await _clearTokens();
        handler.next(err);
      } finally {
        _isRefreshing = false;
      }
    } else {
      handler.next(err);
    }
  }

  Future<bool> _refreshToken() async {
    try {
      final refreshToken =
          await _storage.read(key: AppConstants.refreshTokenKey);
      if (refreshToken == null) return false;

      final response = await _dio.post(
        '/auth/refresh',
        data: {'refresh_token': refreshToken},
      );

      final newAccessToken = response.data['access_token'];
      final newRefreshToken = response.data['refresh_token'];

      await _storage.write(
          key: AppConstants.accessTokenKey, value: newAccessToken);
      await _storage.write(
          key: AppConstants.refreshTokenKey, value: newRefreshToken);

      return true;
    } catch (_) {
      return false;
    }
  }

  Future<void> _clearTokens() async {
    await _storage.delete(key: AppConstants.accessTokenKey);
    await _storage.delete(key: AppConstants.refreshTokenKey);
    await _storage.delete(key: AppConstants.userIdKey);
  }

  bool _isPublicEndpoint(String path) {
    const publicPaths = ['/auth/login', '/auth/register', '/auth/refresh'];
    return publicPaths.any((p) => path.contains(p));
  }
}

// ─── API Exception ────────────────────────────────────────────────────────────

class ApiException implements Exception {
  final int statusCode;
  final String message;
  final Map<String, dynamic>? errors;

  const ApiException({
    required this.statusCode,
    required this.message,
    this.errors,
  });

  factory ApiException.fromDioException(DioException e) {
    final data = e.response?.data;
    return ApiException(
      statusCode: e.response?.statusCode ?? 0,
      message: data is Map ? (data['detail'] ?? 'Unknown error') : 'Network error',
      errors: data is Map ? data['errors'] as Map<String, dynamic>? : null,
    );
  }

  @override
  String toString() => 'ApiException($statusCode): $message';
}
