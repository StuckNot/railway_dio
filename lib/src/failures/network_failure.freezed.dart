// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NetworkFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) network,
    required TResult Function() timeout,
    required TResult Function(
            int? statusCode, String? message, Object? errorBody)
        clientError,
    required TResult Function(
            int? statusCode, String? message, Object? errorBody)
        server,
    required TResult Function(Object? errorBody) unauthorized,
    required TResult Function(Object? error) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? network,
    TResult? Function()? timeout,
    TResult? Function(int? statusCode, String? message, Object? errorBody)?
        clientError,
    TResult? Function(int? statusCode, String? message, Object? errorBody)?
        server,
    TResult? Function(Object? errorBody)? unauthorized,
    TResult? Function(Object? error)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? network,
    TResult Function()? timeout,
    TResult Function(int? statusCode, String? message, Object? errorBody)?
        clientError,
    TResult Function(int? statusCode, String? message, Object? errorBody)?
        server,
    TResult Function(Object? errorBody)? unauthorized,
    TResult Function(Object? error)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkNetworkFailure value) network,
    required TResult Function(NetworkTimeoutFailure value) timeout,
    required TResult Function(NetworkClientFailure value) clientError,
    required TResult Function(NetworkServerFailure value) server,
    required TResult Function(NetworkUnauthorizedFailure value) unauthorized,
    required TResult Function(NetworkUnknownFailure value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkNetworkFailure value)? network,
    TResult? Function(NetworkTimeoutFailure value)? timeout,
    TResult? Function(NetworkClientFailure value)? clientError,
    TResult? Function(NetworkServerFailure value)? server,
    TResult? Function(NetworkUnauthorizedFailure value)? unauthorized,
    TResult? Function(NetworkUnknownFailure value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkNetworkFailure value)? network,
    TResult Function(NetworkTimeoutFailure value)? timeout,
    TResult Function(NetworkClientFailure value)? clientError,
    TResult Function(NetworkServerFailure value)? server,
    TResult Function(NetworkUnauthorizedFailure value)? unauthorized,
    TResult Function(NetworkUnknownFailure value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkFailureCopyWith<$Res> {
  factory $NetworkFailureCopyWith(
          NetworkFailure value, $Res Function(NetworkFailure) then) =
      _$NetworkFailureCopyWithImpl<$Res, NetworkFailure>;
}

/// @nodoc
class _$NetworkFailureCopyWithImpl<$Res, $Val extends NetworkFailure>
    implements $NetworkFailureCopyWith<$Res> {
  _$NetworkFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NetworkNetworkFailureImplCopyWith<$Res> {
  factory _$$NetworkNetworkFailureImplCopyWith(
          _$NetworkNetworkFailureImpl value,
          $Res Function(_$NetworkNetworkFailureImpl) then) =
      __$$NetworkNetworkFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$NetworkNetworkFailureImplCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$NetworkNetworkFailureImpl>
    implements _$$NetworkNetworkFailureImplCopyWith<$Res> {
  __$$NetworkNetworkFailureImplCopyWithImpl(_$NetworkNetworkFailureImpl _value,
      $Res Function(_$NetworkNetworkFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$NetworkNetworkFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NetworkNetworkFailureImpl implements NetworkNetworkFailure {
  const _$NetworkNetworkFailureImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'NetworkFailure.network(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkNetworkFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkNetworkFailureImplCopyWith<_$NetworkNetworkFailureImpl>
      get copyWith => __$$NetworkNetworkFailureImplCopyWithImpl<
          _$NetworkNetworkFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) network,
    required TResult Function() timeout,
    required TResult Function(
            int? statusCode, String? message, Object? errorBody)
        clientError,
    required TResult Function(
            int? statusCode, String? message, Object? errorBody)
        server,
    required TResult Function(Object? errorBody) unauthorized,
    required TResult Function(Object? error) unknown,
  }) {
    return network(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? network,
    TResult? Function()? timeout,
    TResult? Function(int? statusCode, String? message, Object? errorBody)?
        clientError,
    TResult? Function(int? statusCode, String? message, Object? errorBody)?
        server,
    TResult? Function(Object? errorBody)? unauthorized,
    TResult? Function(Object? error)? unknown,
  }) {
    return network?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? network,
    TResult Function()? timeout,
    TResult Function(int? statusCode, String? message, Object? errorBody)?
        clientError,
    TResult Function(int? statusCode, String? message, Object? errorBody)?
        server,
    TResult Function(Object? errorBody)? unauthorized,
    TResult Function(Object? error)? unknown,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkNetworkFailure value) network,
    required TResult Function(NetworkTimeoutFailure value) timeout,
    required TResult Function(NetworkClientFailure value) clientError,
    required TResult Function(NetworkServerFailure value) server,
    required TResult Function(NetworkUnauthorizedFailure value) unauthorized,
    required TResult Function(NetworkUnknownFailure value) unknown,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkNetworkFailure value)? network,
    TResult? Function(NetworkTimeoutFailure value)? timeout,
    TResult? Function(NetworkClientFailure value)? clientError,
    TResult? Function(NetworkServerFailure value)? server,
    TResult? Function(NetworkUnauthorizedFailure value)? unauthorized,
    TResult? Function(NetworkUnknownFailure value)? unknown,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkNetworkFailure value)? network,
    TResult Function(NetworkTimeoutFailure value)? timeout,
    TResult Function(NetworkClientFailure value)? clientError,
    TResult Function(NetworkServerFailure value)? server,
    TResult Function(NetworkUnauthorizedFailure value)? unauthorized,
    TResult Function(NetworkUnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class NetworkNetworkFailure implements NetworkFailure {
  const factory NetworkNetworkFailure({final String? message}) =
      _$NetworkNetworkFailureImpl;

  String? get message;

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkNetworkFailureImplCopyWith<_$NetworkNetworkFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkTimeoutFailureImplCopyWith<$Res> {
  factory _$$NetworkTimeoutFailureImplCopyWith(
          _$NetworkTimeoutFailureImpl value,
          $Res Function(_$NetworkTimeoutFailureImpl) then) =
      __$$NetworkTimeoutFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkTimeoutFailureImplCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$NetworkTimeoutFailureImpl>
    implements _$$NetworkTimeoutFailureImplCopyWith<$Res> {
  __$$NetworkTimeoutFailureImplCopyWithImpl(_$NetworkTimeoutFailureImpl _value,
      $Res Function(_$NetworkTimeoutFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NetworkTimeoutFailureImpl implements NetworkTimeoutFailure {
  const _$NetworkTimeoutFailureImpl();

  @override
  String toString() {
    return 'NetworkFailure.timeout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkTimeoutFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) network,
    required TResult Function() timeout,
    required TResult Function(
            int? statusCode, String? message, Object? errorBody)
        clientError,
    required TResult Function(
            int? statusCode, String? message, Object? errorBody)
        server,
    required TResult Function(Object? errorBody) unauthorized,
    required TResult Function(Object? error) unknown,
  }) {
    return timeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? network,
    TResult? Function()? timeout,
    TResult? Function(int? statusCode, String? message, Object? errorBody)?
        clientError,
    TResult? Function(int? statusCode, String? message, Object? errorBody)?
        server,
    TResult? Function(Object? errorBody)? unauthorized,
    TResult? Function(Object? error)? unknown,
  }) {
    return timeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? network,
    TResult Function()? timeout,
    TResult Function(int? statusCode, String? message, Object? errorBody)?
        clientError,
    TResult Function(int? statusCode, String? message, Object? errorBody)?
        server,
    TResult Function(Object? errorBody)? unauthorized,
    TResult Function(Object? error)? unknown,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkNetworkFailure value) network,
    required TResult Function(NetworkTimeoutFailure value) timeout,
    required TResult Function(NetworkClientFailure value) clientError,
    required TResult Function(NetworkServerFailure value) server,
    required TResult Function(NetworkUnauthorizedFailure value) unauthorized,
    required TResult Function(NetworkUnknownFailure value) unknown,
  }) {
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkNetworkFailure value)? network,
    TResult? Function(NetworkTimeoutFailure value)? timeout,
    TResult? Function(NetworkClientFailure value)? clientError,
    TResult? Function(NetworkServerFailure value)? server,
    TResult? Function(NetworkUnauthorizedFailure value)? unauthorized,
    TResult? Function(NetworkUnknownFailure value)? unknown,
  }) {
    return timeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkNetworkFailure value)? network,
    TResult Function(NetworkTimeoutFailure value)? timeout,
    TResult Function(NetworkClientFailure value)? clientError,
    TResult Function(NetworkServerFailure value)? server,
    TResult Function(NetworkUnauthorizedFailure value)? unauthorized,
    TResult Function(NetworkUnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }
}

abstract class NetworkTimeoutFailure implements NetworkFailure {
  const factory NetworkTimeoutFailure() = _$NetworkTimeoutFailureImpl;
}

/// @nodoc
abstract class _$$NetworkClientFailureImplCopyWith<$Res> {
  factory _$$NetworkClientFailureImplCopyWith(_$NetworkClientFailureImpl value,
          $Res Function(_$NetworkClientFailureImpl) then) =
      __$$NetworkClientFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? statusCode, String? message, Object? errorBody});
}

/// @nodoc
class __$$NetworkClientFailureImplCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$NetworkClientFailureImpl>
    implements _$$NetworkClientFailureImplCopyWith<$Res> {
  __$$NetworkClientFailureImplCopyWithImpl(_$NetworkClientFailureImpl _value,
      $Res Function(_$NetworkClientFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? errorBody = freezed,
  }) {
    return _then(_$NetworkClientFailureImpl(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errorBody: freezed == errorBody ? _value.errorBody : errorBody,
    ));
  }
}

/// @nodoc

class _$NetworkClientFailureImpl implements NetworkClientFailure {
  const _$NetworkClientFailureImpl(
      {this.statusCode, this.message, this.errorBody});

  @override
  final int? statusCode;
  @override
  final String? message;
  @override
  final Object? errorBody;

  @override
  String toString() {
    return 'NetworkFailure.clientError(statusCode: $statusCode, message: $message, errorBody: $errorBody)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkClientFailureImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.errorBody, errorBody));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message,
      const DeepCollectionEquality().hash(errorBody));

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkClientFailureImplCopyWith<_$NetworkClientFailureImpl>
      get copyWith =>
          __$$NetworkClientFailureImplCopyWithImpl<_$NetworkClientFailureImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) network,
    required TResult Function() timeout,
    required TResult Function(
            int? statusCode, String? message, Object? errorBody)
        clientError,
    required TResult Function(
            int? statusCode, String? message, Object? errorBody)
        server,
    required TResult Function(Object? errorBody) unauthorized,
    required TResult Function(Object? error) unknown,
  }) {
    return clientError(statusCode, message, errorBody);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? network,
    TResult? Function()? timeout,
    TResult? Function(int? statusCode, String? message, Object? errorBody)?
        clientError,
    TResult? Function(int? statusCode, String? message, Object? errorBody)?
        server,
    TResult? Function(Object? errorBody)? unauthorized,
    TResult? Function(Object? error)? unknown,
  }) {
    return clientError?.call(statusCode, message, errorBody);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? network,
    TResult Function()? timeout,
    TResult Function(int? statusCode, String? message, Object? errorBody)?
        clientError,
    TResult Function(int? statusCode, String? message, Object? errorBody)?
        server,
    TResult Function(Object? errorBody)? unauthorized,
    TResult Function(Object? error)? unknown,
    required TResult orElse(),
  }) {
    if (clientError != null) {
      return clientError(statusCode, message, errorBody);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkNetworkFailure value) network,
    required TResult Function(NetworkTimeoutFailure value) timeout,
    required TResult Function(NetworkClientFailure value) clientError,
    required TResult Function(NetworkServerFailure value) server,
    required TResult Function(NetworkUnauthorizedFailure value) unauthorized,
    required TResult Function(NetworkUnknownFailure value) unknown,
  }) {
    return clientError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkNetworkFailure value)? network,
    TResult? Function(NetworkTimeoutFailure value)? timeout,
    TResult? Function(NetworkClientFailure value)? clientError,
    TResult? Function(NetworkServerFailure value)? server,
    TResult? Function(NetworkUnauthorizedFailure value)? unauthorized,
    TResult? Function(NetworkUnknownFailure value)? unknown,
  }) {
    return clientError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkNetworkFailure value)? network,
    TResult Function(NetworkTimeoutFailure value)? timeout,
    TResult Function(NetworkClientFailure value)? clientError,
    TResult Function(NetworkServerFailure value)? server,
    TResult Function(NetworkUnauthorizedFailure value)? unauthorized,
    TResult Function(NetworkUnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (clientError != null) {
      return clientError(this);
    }
    return orElse();
  }
}

abstract class NetworkClientFailure implements NetworkFailure {
  const factory NetworkClientFailure(
      {final int? statusCode,
      final String? message,
      final Object? errorBody}) = _$NetworkClientFailureImpl;

  int? get statusCode;
  String? get message;
  Object? get errorBody;

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkClientFailureImplCopyWith<_$NetworkClientFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkServerFailureImplCopyWith<$Res> {
  factory _$$NetworkServerFailureImplCopyWith(_$NetworkServerFailureImpl value,
          $Res Function(_$NetworkServerFailureImpl) then) =
      __$$NetworkServerFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? statusCode, String? message, Object? errorBody});
}

/// @nodoc
class __$$NetworkServerFailureImplCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$NetworkServerFailureImpl>
    implements _$$NetworkServerFailureImplCopyWith<$Res> {
  __$$NetworkServerFailureImplCopyWithImpl(_$NetworkServerFailureImpl _value,
      $Res Function(_$NetworkServerFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? errorBody = freezed,
  }) {
    return _then(_$NetworkServerFailureImpl(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errorBody: freezed == errorBody ? _value.errorBody : errorBody,
    ));
  }
}

/// @nodoc

class _$NetworkServerFailureImpl implements NetworkServerFailure {
  const _$NetworkServerFailureImpl(
      {this.statusCode, this.message, this.errorBody});

  @override
  final int? statusCode;
  @override
  final String? message;
  @override
  final Object? errorBody;

  @override
  String toString() {
    return 'NetworkFailure.server(statusCode: $statusCode, message: $message, errorBody: $errorBody)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkServerFailureImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.errorBody, errorBody));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message,
      const DeepCollectionEquality().hash(errorBody));

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkServerFailureImplCopyWith<_$NetworkServerFailureImpl>
      get copyWith =>
          __$$NetworkServerFailureImplCopyWithImpl<_$NetworkServerFailureImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) network,
    required TResult Function() timeout,
    required TResult Function(
            int? statusCode, String? message, Object? errorBody)
        clientError,
    required TResult Function(
            int? statusCode, String? message, Object? errorBody)
        server,
    required TResult Function(Object? errorBody) unauthorized,
    required TResult Function(Object? error) unknown,
  }) {
    return server(statusCode, message, errorBody);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? network,
    TResult? Function()? timeout,
    TResult? Function(int? statusCode, String? message, Object? errorBody)?
        clientError,
    TResult? Function(int? statusCode, String? message, Object? errorBody)?
        server,
    TResult? Function(Object? errorBody)? unauthorized,
    TResult? Function(Object? error)? unknown,
  }) {
    return server?.call(statusCode, message, errorBody);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? network,
    TResult Function()? timeout,
    TResult Function(int? statusCode, String? message, Object? errorBody)?
        clientError,
    TResult Function(int? statusCode, String? message, Object? errorBody)?
        server,
    TResult Function(Object? errorBody)? unauthorized,
    TResult Function(Object? error)? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(statusCode, message, errorBody);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkNetworkFailure value) network,
    required TResult Function(NetworkTimeoutFailure value) timeout,
    required TResult Function(NetworkClientFailure value) clientError,
    required TResult Function(NetworkServerFailure value) server,
    required TResult Function(NetworkUnauthorizedFailure value) unauthorized,
    required TResult Function(NetworkUnknownFailure value) unknown,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkNetworkFailure value)? network,
    TResult? Function(NetworkTimeoutFailure value)? timeout,
    TResult? Function(NetworkClientFailure value)? clientError,
    TResult? Function(NetworkServerFailure value)? server,
    TResult? Function(NetworkUnauthorizedFailure value)? unauthorized,
    TResult? Function(NetworkUnknownFailure value)? unknown,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkNetworkFailure value)? network,
    TResult Function(NetworkTimeoutFailure value)? timeout,
    TResult Function(NetworkClientFailure value)? clientError,
    TResult Function(NetworkServerFailure value)? server,
    TResult Function(NetworkUnauthorizedFailure value)? unauthorized,
    TResult Function(NetworkUnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class NetworkServerFailure implements NetworkFailure {
  const factory NetworkServerFailure(
      {final int? statusCode,
      final String? message,
      final Object? errorBody}) = _$NetworkServerFailureImpl;

  int? get statusCode;
  String? get message;
  Object? get errorBody;

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkServerFailureImplCopyWith<_$NetworkServerFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkUnauthorizedFailureImplCopyWith<$Res> {
  factory _$$NetworkUnauthorizedFailureImplCopyWith(
          _$NetworkUnauthorizedFailureImpl value,
          $Res Function(_$NetworkUnauthorizedFailureImpl) then) =
      __$$NetworkUnauthorizedFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? errorBody});
}

/// @nodoc
class __$$NetworkUnauthorizedFailureImplCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$NetworkUnauthorizedFailureImpl>
    implements _$$NetworkUnauthorizedFailureImplCopyWith<$Res> {
  __$$NetworkUnauthorizedFailureImplCopyWithImpl(
      _$NetworkUnauthorizedFailureImpl _value,
      $Res Function(_$NetworkUnauthorizedFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorBody = freezed,
  }) {
    return _then(_$NetworkUnauthorizedFailureImpl(
      errorBody: freezed == errorBody ? _value.errorBody : errorBody,
    ));
  }
}

/// @nodoc

class _$NetworkUnauthorizedFailureImpl implements NetworkUnauthorizedFailure {
  const _$NetworkUnauthorizedFailureImpl({this.errorBody});

  @override
  final Object? errorBody;

  @override
  String toString() {
    return 'NetworkFailure.unauthorized(errorBody: $errorBody)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkUnauthorizedFailureImpl &&
            const DeepCollectionEquality().equals(other.errorBody, errorBody));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(errorBody));

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkUnauthorizedFailureImplCopyWith<_$NetworkUnauthorizedFailureImpl>
      get copyWith => __$$NetworkUnauthorizedFailureImplCopyWithImpl<
          _$NetworkUnauthorizedFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) network,
    required TResult Function() timeout,
    required TResult Function(
            int? statusCode, String? message, Object? errorBody)
        clientError,
    required TResult Function(
            int? statusCode, String? message, Object? errorBody)
        server,
    required TResult Function(Object? errorBody) unauthorized,
    required TResult Function(Object? error) unknown,
  }) {
    return unauthorized(errorBody);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? network,
    TResult? Function()? timeout,
    TResult? Function(int? statusCode, String? message, Object? errorBody)?
        clientError,
    TResult? Function(int? statusCode, String? message, Object? errorBody)?
        server,
    TResult? Function(Object? errorBody)? unauthorized,
    TResult? Function(Object? error)? unknown,
  }) {
    return unauthorized?.call(errorBody);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? network,
    TResult Function()? timeout,
    TResult Function(int? statusCode, String? message, Object? errorBody)?
        clientError,
    TResult Function(int? statusCode, String? message, Object? errorBody)?
        server,
    TResult Function(Object? errorBody)? unauthorized,
    TResult Function(Object? error)? unknown,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(errorBody);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkNetworkFailure value) network,
    required TResult Function(NetworkTimeoutFailure value) timeout,
    required TResult Function(NetworkClientFailure value) clientError,
    required TResult Function(NetworkServerFailure value) server,
    required TResult Function(NetworkUnauthorizedFailure value) unauthorized,
    required TResult Function(NetworkUnknownFailure value) unknown,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkNetworkFailure value)? network,
    TResult? Function(NetworkTimeoutFailure value)? timeout,
    TResult? Function(NetworkClientFailure value)? clientError,
    TResult? Function(NetworkServerFailure value)? server,
    TResult? Function(NetworkUnauthorizedFailure value)? unauthorized,
    TResult? Function(NetworkUnknownFailure value)? unknown,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkNetworkFailure value)? network,
    TResult Function(NetworkTimeoutFailure value)? timeout,
    TResult Function(NetworkClientFailure value)? clientError,
    TResult Function(NetworkServerFailure value)? server,
    TResult Function(NetworkUnauthorizedFailure value)? unauthorized,
    TResult Function(NetworkUnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class NetworkUnauthorizedFailure implements NetworkFailure {
  const factory NetworkUnauthorizedFailure({final Object? errorBody}) =
      _$NetworkUnauthorizedFailureImpl;

  Object? get errorBody;

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkUnauthorizedFailureImplCopyWith<_$NetworkUnauthorizedFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkUnknownFailureImplCopyWith<$Res> {
  factory _$$NetworkUnknownFailureImplCopyWith(
          _$NetworkUnknownFailureImpl value,
          $Res Function(_$NetworkUnknownFailureImpl) then) =
      __$$NetworkUnknownFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? error});
}

/// @nodoc
class __$$NetworkUnknownFailureImplCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$NetworkUnknownFailureImpl>
    implements _$$NetworkUnknownFailureImplCopyWith<$Res> {
  __$$NetworkUnknownFailureImplCopyWithImpl(_$NetworkUnknownFailureImpl _value,
      $Res Function(_$NetworkUnknownFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$NetworkUnknownFailureImpl(
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$NetworkUnknownFailureImpl implements NetworkUnknownFailure {
  const _$NetworkUnknownFailureImpl({this.error});

  @override
  final Object? error;

  @override
  String toString() {
    return 'NetworkFailure.unknown(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkUnknownFailureImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkUnknownFailureImplCopyWith<_$NetworkUnknownFailureImpl>
      get copyWith => __$$NetworkUnknownFailureImplCopyWithImpl<
          _$NetworkUnknownFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) network,
    required TResult Function() timeout,
    required TResult Function(
            int? statusCode, String? message, Object? errorBody)
        clientError,
    required TResult Function(
            int? statusCode, String? message, Object? errorBody)
        server,
    required TResult Function(Object? errorBody) unauthorized,
    required TResult Function(Object? error) unknown,
  }) {
    return unknown(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? network,
    TResult? Function()? timeout,
    TResult? Function(int? statusCode, String? message, Object? errorBody)?
        clientError,
    TResult? Function(int? statusCode, String? message, Object? errorBody)?
        server,
    TResult? Function(Object? errorBody)? unauthorized,
    TResult? Function(Object? error)? unknown,
  }) {
    return unknown?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? network,
    TResult Function()? timeout,
    TResult Function(int? statusCode, String? message, Object? errorBody)?
        clientError,
    TResult Function(int? statusCode, String? message, Object? errorBody)?
        server,
    TResult Function(Object? errorBody)? unauthorized,
    TResult Function(Object? error)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkNetworkFailure value) network,
    required TResult Function(NetworkTimeoutFailure value) timeout,
    required TResult Function(NetworkClientFailure value) clientError,
    required TResult Function(NetworkServerFailure value) server,
    required TResult Function(NetworkUnauthorizedFailure value) unauthorized,
    required TResult Function(NetworkUnknownFailure value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkNetworkFailure value)? network,
    TResult? Function(NetworkTimeoutFailure value)? timeout,
    TResult? Function(NetworkClientFailure value)? clientError,
    TResult? Function(NetworkServerFailure value)? server,
    TResult? Function(NetworkUnauthorizedFailure value)? unauthorized,
    TResult? Function(NetworkUnknownFailure value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkNetworkFailure value)? network,
    TResult Function(NetworkTimeoutFailure value)? timeout,
    TResult Function(NetworkClientFailure value)? clientError,
    TResult Function(NetworkServerFailure value)? server,
    TResult Function(NetworkUnauthorizedFailure value)? unauthorized,
    TResult Function(NetworkUnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class NetworkUnknownFailure implements NetworkFailure {
  const factory NetworkUnknownFailure({final Object? error}) =
      _$NetworkUnknownFailureImpl;

  Object? get error;

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkUnknownFailureImplCopyWith<_$NetworkUnknownFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
