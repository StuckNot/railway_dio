import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import '../failures/network_failure.dart';

/// Extension on [Future<Response<T>>] that maps a Dio HTTP response or exception
/// into `Either<NetworkFailure, R>`.
extension DioResponseToEither<T> on Future<Response<T>> {
  /// Converts a Dio [Response] future into `Either<NetworkFailure, R>`.
  ///
  /// Pass an optional [decoder] to map the raw response data `T` (e.g., Map or List) into type `R`.
  /// Pass an optional [errorDecoder] to map custom backend JSON error payloads into structured models.
  Future<Either<NetworkFailure, R>> toEither<R>([
    R Function(T data)? decoder,
    Object? Function(dynamic errorData)? errorDecoder,
  ]) async {
    try {
      final response = await this;
      final data = response.data;

      if (data == null) {
        return right(null as R);
      }

      if (decoder != null) {
        return right(decoder(data));
      }

      return right(data as R);
    } on DioException catch (e) {
      return left(_mapDioExceptionToFailure(e, errorDecoder));
    } catch (e) {
      return left(NetworkFailure.unknown(error: e));
    }
  }
}

NetworkFailure _mapDioExceptionToFailure(
  DioException e,
  Object? Function(dynamic errorData)? errorDecoder,
) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
    case DioExceptionType.sendTimeout:
    case DioExceptionType.receiveTimeout:
      return const NetworkFailure.timeout();

    case DioExceptionType.connectionError:
      return NetworkFailure.network(message: e.message);

    case DioExceptionType.badResponse:
      final response = e.response;
      final statusCode = response?.statusCode;
      final message = response?.statusMessage ?? e.message;
      final rawErrorData = response?.data;
      final errorBody = (errorDecoder != null && rawErrorData != null)
          ? errorDecoder(rawErrorData)
          : rawErrorData;

      if (statusCode == 401) {
        return NetworkFailure.unauthorized(errorBody: errorBody);
      }
      if (statusCode != null && statusCode >= 500) {
        return NetworkFailure.server(
          statusCode: statusCode,
          message: message,
          errorBody: errorBody,
        );
      }
      if (statusCode != null && statusCode >= 400) {
        return NetworkFailure.clientError(
          statusCode: statusCode,
          message: message,
          errorBody: errorBody,
        );
      }
      return NetworkFailure.unknown(error: e);

    case DioExceptionType.cancel:
      return const NetworkFailure.unknown(error: 'Request cancelled');

    case DioExceptionType.badCertificate:
      return const NetworkFailure.network(
        message: 'Invalid TLS/SSL certificate',
      );

    case DioExceptionType.unknown:
    default:
      return NetworkFailure.unknown(error: e.error ?? e.message);
  }
}
