import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:railway_dio/railway_dio.dart';
import 'package:test/test.dart';

class MockResponse {
  final String result;
  const MockResponse(this.result);
}

class MockCustomError {
  final String message;
  const MockCustomError(this.message);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MockCustomError &&
          runtimeType == other.runtimeType &&
          message == other.message;

  @override
  int get hashCode => message.hashCode;
}

void main() {
  Future<Either<NetworkFailure, dynamic>> mockSuccessResponse(
    int statusCode, {
    dynamic data = '',
    bool passDecoder = false,
  }) async {
    final response = Response<dynamic>(
      requestOptions: RequestOptions(),
      data: data,
      statusCode: statusCode,
    );
    if (passDecoder) {
      return Future.value(response).toEither<MockResponse>(
        (data) => MockResponse(data.toString()),
      );
    }
    return Future.value(response).toEither<dynamic>();
  }

  Future<Either<NetworkFailure, String>> mockDioBadResponse(
    int statusCode,
  ) async {
    final dioException = DioException(
      requestOptions: RequestOptions(),
      type: DioExceptionType.badResponse,
      response: Response(
        requestOptions: RequestOptions(),
        statusCode: statusCode,
      ),
    );
    return Future<Response<String>>.error(dioException).toEither();
  }

  group('response mapper test', () {
    test('status code 200 (success)', () async {
      final result = await mockSuccessResponse(200);
      expect(result, right(''));
    });

    test('status code 200 (success) with decoder', () async {
      final result = await mockSuccessResponse(
        200,
        data: 'hello',
        passDecoder: true,
      );
      expect(result.isRight(), isTrue);
      final mockObj = (result as Right<NetworkFailure, dynamic>).value as MockResponse;
      expect(mockObj.result, 'hello');
    });

    test('status code 203 (success)', () async {
      final result = await mockSuccessResponse(203);
      expect(result, right(''));
    });

    test('null response body (e.g. 204 No Content)', () async {
      final result = await mockSuccessResponse(204, data: null);
      expect(result, right(null));
    });

    test('status code 401', () async {
      final result = await mockDioBadResponse(401);
      expect(result, left(const NetworkFailure.unauthorized()));
    });

    test('status code 502', () async {
      final result = await mockDioBadResponse(502);
      expect(result, left(const NetworkFailure.server(statusCode: 502)));
    });

    test('status code 301', () async {
      final result = await mockDioBadResponse(301);
      expect(result.isLeft(), isTrue);
      expect(result.getLeft().toNullable(), isA<NetworkUnknownFailure>());
    });

    test('status code 403', () async {
      final result = await mockDioBadResponse(403);
      expect(result, left(const NetworkFailure.clientError(statusCode: 403)));
    });

    test('status code 400 with custom errorDecoder', () async {
      final dioException = DioException(
        requestOptions: RequestOptions(),
        type: DioExceptionType.badResponse,
        response: Response(
          requestOptions: RequestOptions(),
          statusCode: 400,
          data: {'message': 'Invalid parameter'},
        ),
      );

      final result = await Future<Response<String>>.error(
        dioException,
      ).toEither(
        null,
        (errorData) => MockCustomError(
          (errorData as Map<String, dynamic>)['message'] as String,
        ),
      );

      expect(
        result,
        left(
          const NetworkFailure.clientError(
            statusCode: 400,
            message: null,
            errorBody: MockCustomError('Invalid parameter'),
          ),
        ),
      );
    });

    test('on connectionTimeout', () async {
      final dioException = DioException(
        requestOptions: RequestOptions(),
        type: DioExceptionType.connectionTimeout,
      );
      final result = await Future<Response<String>>.error(
        dioException,
      ).toEither();
      expect(result, left(const NetworkFailure.timeout()));
    });

    test('on connectionError', () async {
      final dioException = DioException(
        requestOptions: RequestOptions(),
        type: DioExceptionType.connectionError,
        message: 'No internet',
      );
      final result = await Future<Response<String>>.error(
        dioException,
      ).toEither();
      expect(
        result,
        left(const NetworkFailure.network(message: 'No internet')),
      );
    });

    test('on cancel', () async {
      final dioException = DioException(
        requestOptions: RequestOptions(),
        type: DioExceptionType.cancel,
      );
      final result = await Future<Response<String>>.error(
        dioException,
      ).toEither();
      expect(
        result,
        left(const NetworkFailure.unknown(error: 'Request cancelled')),
      );
    });

    test('on badCertificate', () async {
      final dioException = DioException(
        requestOptions: RequestOptions(),
        type: DioExceptionType.badCertificate,
      );
      final result = await Future<Response<String>>.error(
        dioException,
      ).toEither();
      expect(
        result,
        left(
          const NetworkFailure.network(message: 'Invalid TLS/SSL certificate'),
        ),
      );
    });

    test('on DioExceptionType.unknown', () async {
      final dioException = DioException(
        requestOptions: RequestOptions(),
        type: DioExceptionType.unknown,
        error: 'Unknown error occurred',
      );
      final result = await Future<Response<String>>.error(
        dioException,
      ).toEither();
      expect(
        result,
        left(const NetworkFailure.unknown(error: 'Unknown error occurred')),
      );
    });

    test('on generic Exception', () async {
      final exception = Exception('boom');
      final result = await Future<Response<String>>.error(exception).toEither();
      expect(result, left(NetworkFailure.unknown(error: exception)));
    });
  });
}
