import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_failure.freezed.dart';

/// Sealed union representing transport-level network failures.
@freezed
sealed class NetworkFailure with _$NetworkFailure {
  const factory NetworkFailure.network({String? message}) =
      NetworkNetworkFailure;
  const factory NetworkFailure.timeout() = NetworkTimeoutFailure;
  const factory NetworkFailure.clientError({
    int? statusCode,
    String? message,
    Object? errorBody,
  }) = NetworkClientFailure;
  const factory NetworkFailure.server({
    int? statusCode,
    String? message,
    Object? errorBody,
  }) = NetworkServerFailure;
  const factory NetworkFailure.unauthorized({Object? errorBody}) =
      NetworkUnauthorizedFailure;
  const factory NetworkFailure.unknown({Object? error}) = NetworkUnknownFailure;
}
