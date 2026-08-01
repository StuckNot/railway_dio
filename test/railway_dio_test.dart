import 'package:railway_dio/railway_dio.dart';
import 'package:test/test.dart';

void main() {
  test('NetworkFailure variants are value-equal', () {
    expect(
      const NetworkFailure.unauthorized(),
      const NetworkFailure.unauthorized(),
    );
    expect(
      const NetworkFailure.server(statusCode: 500),
      isNot(const NetworkFailure.server(statusCode: 503)),
    );
  });
}
