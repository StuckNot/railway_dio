# railway_dio

[![pub package](https://img.shields.io/pub/v/railway_dio.svg)](https://pub.dev/packages/railway_dio)
[![pub points](https://img.shields.io/pub/points/railway_dio)](https://pub.dev/packages/railway_dio/score)
[![CI](https://github.com/StuckNot/railway_chopper/actions/workflows/ci.yml/badge.svg)](https://github.com/StuckNot/railway_chopper/actions/workflows/ci.yml)
[![codecov](https://codecov.io/gh/StuckNot/railway_dio/graph/badge.svg?token=8RB3LQZ3WY)](https://codecov.io/gh/StuckNot/railway_dio)
[![style: lints](https://img.shields.io/badge/style-lints-4BC0F5.svg)](https://pub.dev/packages/lints)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A `Dio` client factory and a `Response -> Either<NetworkFailure, T>` mapper for railway-oriented error handling in Flutter/Dart.

## How it works

1. Build a `Dio` instance with `buildDioClient(baseUrl: ...)` — or use your existing Dio client.
2. Call `.toEither()` on any Dio request future. You get back `Either<NetworkFailure, T>` — `Right(data)` on success, or `Left(failure)` on failure.
3. The failure type is **assigned automatically** based on what went wrong (timeout, no connection, 401 unauthorized, 4xx client error, 5xx server error, or unknown).

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
  fpdart: ^1.1.0
```

## Usage

```dart
import 'package:railway_dio/railway_dio.dart';

final dio = buildDioClient(
  baseUrl: 'https://api.example.com',
);

final result = await dio
    .get<Map<String, dynamic>>('/users/1')
    .toEither((data) => User.fromJson(data));

result.match(
  (failure) => print('Failed: $failure'),
  (user) => print('User: ${user.name}'),
);
```

## Exports

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
| `NetworkFailure.unknown(error)` | Any other unexpected exception or request cancellation. |

## Contributing

Generate freezed files:

```bash
dart pub get
dart run build_runner build --delete-conflicting-outputs
```
