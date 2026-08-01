import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';
import 'package:railway_dio/railway_dio.dart';
import 'package:test/test.dart';

class HttpClientAdapterMock extends Mock implements HttpClientAdapter {}
class MockInterceptor extends Mock implements Interceptor {}

void main() {
  const url = 'https://api.example.com';
  const connectionTimeout = Duration(seconds: 5);

  group('buildDioClient', () {
    test('baseUrl should be unchanged', () {
      final result = buildDioClient(baseUrl: url);
      expect(result.options.baseUrl, url);
    });

    test('connectionTime should not change (if passed)', () {
      final result = buildDioClient(
        baseUrl: url,
        connectTimeout: connectionTimeout,
      );
      expect(result.options.connectTimeout, connectionTimeout);
    });
    test('default connectionTime should be 15 secs', () {
      final result = buildDioClient(baseUrl: url);
      expect(result.options.connectTimeout, const Duration(seconds: 15));
    });
    test('default receiveTimeout should be 15 secs', () {
      final result = buildDioClient(baseUrl: url);
      expect(result.options.receiveTimeout, const Duration(seconds: 15));
    });

    test('should use default adapter if none is provided', () {
      final result = buildDioClient(baseUrl: url);
      expect(result.httpClientAdapter, isNotNull);
    });

    test('should use provided adapter if provided', () {
      final adapter = HttpClientAdapterMock();
      final result = buildDioClient(baseUrl: url, adapter: adapter);
      expect(result.httpClientAdapter, adapter);
    });

    test('should use default interceptor if none is provided', () {
      final result = buildDioClient(baseUrl: url);
      expect(result.interceptors, isNotEmpty);
    });

    test('should use provided interceptor if provided', () {
      final interceptor = MockInterceptor();
      final result = buildDioClient(baseUrl: url, interceptors: [interceptor]);
      expect(result.interceptors, contains(interceptor));
    });
  });
}
