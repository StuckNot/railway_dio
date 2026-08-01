import 'package:railway_dio/railway_dio.dart';
import 'package:test/test.dart';

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
      expect(result.options.connectTimeout,  const Duration(seconds: 15));
    });
  });
}
