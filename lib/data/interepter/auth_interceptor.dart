import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthInterceptor extends Interceptor {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();
  final Dio _dio;
  bool _isRefreshing = false;

  AuthInterceptor(this._dio);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await _storage.read(key: 'accessToken');
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    return handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == 401 && !_isRefreshing) {
      _isRefreshing = true;

      try {
        final refreshToken = await _storage.read(key: 'refreshToken');

        if (refreshToken == null) {
          _isRefreshing = false;
          await _storage.delete(key: 'accessToken');
          await _storage.delete(key: 'refreshToken');
          await _storage.delete(key: 'userId');
          return handler.next(err);
        }

        final response = await _dio.post(
          '/auth/refresh',
          data: {'refreshToken': refreshToken},
        );

        final newAccessToken = response.data['accessToken'];
        final newRefreshToken = response.data['refreshToken'];
        final userId = response.data['userId'];

        await _storage.write(key: 'accessToken', value: newAccessToken);
        await _storage.write(key: 'refreshToken', value: newRefreshToken);
        await _storage.write(key: 'userId', value: userId.toString());

        err.requestOptions.headers['Authorization'] = 'Bearer $newAccessToken';

        final retryResponse = await _dio.fetch(err.requestOptions);
        _isRefreshing = false;
        return handler.resolve(retryResponse);
      } catch (e) {
        _isRefreshing = false;
        await _storage.delete(key: 'accessToken');
        await _storage.delete(key: 'refreshToken');
        await _storage.delete(key: 'userId');
        print('❌ 토큰 갱신 실패: $e');
        return handler.next(err);
      }
    }

    return handler.next(err);
  }
}
