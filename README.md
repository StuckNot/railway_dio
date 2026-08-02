# railway_dio

[![pub package](https://img.shields.io/pub/v/railway_dio.svg)](https://pub.dev/packages/railway_dio)
[![pub points](https://img.shields.io/pub/points/railway_dio)](https://pub.dev/packages/railway_dio/score)
[![CI](https://github.com/StuckNot/railway_dio/actions/workflows/ci.yml/badge.svg)](https://github.com/StuckNot/railway_dio/actions/workflows/ci.yml)
[![codecov](https://codecov.io/gh/StuckNot/railway_dio/graph/badge.svg?token=8RB3LQZ3WY)](https://codecov.io/gh/StuckNot/railway_dio)
[![style: lints](https://img.shields.io/badge/style-lints-4BC0F5.svg)](https://pub.dev/packages/lints)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A `Dio` client factory and a `Response -> Either<NetworkFailure, T>` mapper for railway-oriented error handling in Flutter/Dart.

## How it works

1. Build a `Dio` instance with `buildDioClient(baseUrl: ...)` — same setup as plain Dio.
2. Call `.toEither()` on any Dio request. You get back `Either<NetworkFailure, T>` — `Right(data)` on success, or `Left(failure)` on failure. The failure type is **assigned automatically** based on what went wrong (timeout, no connection, 401 unauthorized, 4xx client error, 5xx server error, or unknown).

## Why railway_dio over plain Dio?

Without `railway_dio`, every repository end up hand-rolling its own `try-catch` blocks and `DioException` handling:

```dart
try {
  final response = await dio.get('/something');
  return User.fromJson(response.data);
} on DioException catch (e) {
  if (e.type == DioExceptionType.connectionTimeout) {
    // handle timeout
  } else if (e.response?.statusCode == 401) {
    // handle unauthorized
  }
  // ...repeated across every single repository
}
```

`toEither` centralizes that branching once:

```dart
final result = await dio.get('/something').toEither((data) => User.fromJson(data));

result.match(
  (failure) => /* handle NetworkFailure */,
  (user) => /* use user */,
);
```


## What is "Railway Oriented Programming"?

Railway Oriented Programming (ROP) is a functional pattern for modeling a chain of operations that can each succeed or fail, without littering your code with `try`/`catch` or null checks at every step. Picture two parallel tracks: a "success" track and a "failure" track. Each step runs on the success track, and the moment one step fails, execution switches to the failure track and every later step is skipped — the failure rides straight through to the end untouched.

In Dart, `Either<L, R>` (from `fpdart`) is the type that represents this: `Left` for failure, `Right` for success. `railway_dio` builds that pattern on top of `dio`, so every network call resolves into a single, well-typed `Either<NetworkFailure, T>` — you handle failure once, at the end of the chain, instead of after every call.

This package owns **no business logic and no DTOs**. It's feature-agnostic, so any number of features in an app can depend on it without depending on each other through it.


## Installation

Add `railway_dio` to your `pubspec.yaml`:

```yaml
dependencies:
  railway_dio: ^0.1.0
```

## Usage

### 1. Basic — Just add .toEither() after API call
If you don't pass a decoder, `.toEither()` returns `Either<NetworkFailure, T>` with the raw response data (e.g. `Map<String, dynamic>` or `List`):

```dart
import 'package:railway_dio/railway_dio.dart';

final dio = buildDioClient(baseUrl: 'https://api.example.com');

// Returns Either<NetworkFailure, Map<String, dynamic>>
final result = await dio.get<Map<String, dynamic>>('/users/1').toEither();

result.match(
  (failure) => print('Failed: $failure'),
  (Map<String, dynamic> json) => print('User Name: ${json['name']}'),
);
```

### 2. Advanced — With Inline Decoder (Returns typed model)
Pass a decoder function as the first argument to convert the raw response directly into your domain model (e.g., `User`):

```dart
// Returns Either<NetworkFailure, User>
final result = await dio.get<Map<String, dynamic>>('/users/1').toEither(
  (data) => User.fromJson(data),
);

result.match(
  (failure) => print('Failed: $failure'),
  (User user) => print('Loaded User: ${user.name}'),
);
```

Pass an `errorDecoder` as the second argument to parse structured error payloads from your backend on 4xx/5xx responses:

```dart
final result = await dio.get<Map<String, dynamic>>('/users/1').toEither(
  (data) => User.fromJson(data),
  (errorJson) => ApiError.fromJson(errorJson),
);

result.match(
  (failure) {
    if (failure is NetworkClientFailure && failure.errorBody is ApiError) {
      final apiError = failure.errorBody as ApiError;
      print('API Error Code: ${apiError.code}');
    }
  },
  (user) => print('Loaded User: ${user.name}'),
);
```

## What's in here

| Export | Purpose |
| --- | --- |
| `buildDioClient` | Configures a standard `Dio` instance (base url, timeouts, default headers, interceptors). |
| `NetworkFailure` | Sealed, freezed union of transport-level network failures. |
| `toEither` | Extension on `Future<Response<T>>` — converts a Dio request into `Either<NetworkFailure, R>`. |

### `NetworkFailure` variants

| Variant | When |
| --- | --- |
| `NetworkFailure.network(message)` | DNS failure, connection refused, offline device, or invalid SSL certificate. |
| `NetworkFailure.timeout()` | Connection, send, or receive timeout exceeded. |
| `NetworkFailure.unauthorized(errorBody)` | Response status was `401`. |
| `NetworkFailure.clientError(statusCode, message, errorBody)` | Response status was `4xx` (excluding 401). |
| `NetworkFailure.server(statusCode, message, errorBody)` | Response status was `5xx`. |

## What's NOT in here

- **Auth interception** — token injection and 401 refresh are a feature/app concern, not a transport concern. Wire your own `Interceptor` into `buildDioClient`'s `interceptors` param instead of forking this package.
- **DTOs / Models** — these belong in each feature's own data layer.
- **Domain failures** — `NetworkFailure` is an infra-layer type. Map it into your own domain failure type before it reaches your domain/presentation layers.
- Anything specific to a single feature or client. If a feature needs different behavior, it implements an interface or injects a callback — it never forks this package.

## Related Packages

Part of the **Railway Suite** for functional error handling in Dart & Flutter:

- [`railway_chopper`](https://pub.dev/packages/railway_chopper) — Railway-oriented error handling for `package:chopper`.


## Versioning

Follows semver: PATCH for fixes, MINOR for additive changes, MAJOR for breaking changes to the public surface (the exports listed above).

---

## Contributing

Everything below is for working on this package itself — not needed if you're just using it as a dependency.
```bash
dart pub get
dart run build_runner build --delete-conflicting-outputs
dart analyze
dart test
```
