import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:hanjeon/data/interepter/auth_interceptor.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DioClient {
  static Dio? _instance;

  static Dio get instance {
    if (_instance == null) {
      final baseUrl = dotenv.env['API_BASE_URL'] ?? '';
      _instance = Dio(
        BaseOptions(
          baseUrl: baseUrl,
          connectTimeout: const Duration(seconds: 30),
          receiveTimeout: const Duration(seconds: 30),
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      );

      // SSL 인증서 검증 무시
      (_instance!.httpClientAdapter as IOHttpClientAdapter).createHttpClient =
          () {
            final client = HttpClient();
            client.badCertificateCallback = (cert, host, port) => true;
            return client;
          };

      _instance!.interceptors.add(AuthInterceptor(_instance!));
      _instance!.interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) {
            if (options.data != null &&
                options.data is! Map &&
                options.data is! String) {
              try {
                final json = (options.data as dynamic).toJson();
                print('🔄 toJson 변환: $json');
                options.data = json;
              } catch (e) {
                print('⚠️ toJson 실패: $e');
              }
            }
            return handler.next(options);
          },
        ),
      );
      _instance!.interceptors.add(
        LogInterceptor(
          requestBody: true,
          responseBody: true,
          error: true,
          logPrint: (obj) {
            final str = obj.toString();
            if (!str.contains('#0') && !str.contains('│')) {
              print(str);
            }
          },
        ),
      );
    }
    return _instance!;
  }
}
