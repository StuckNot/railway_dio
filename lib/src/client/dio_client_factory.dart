import 'package:dio/dio.dart';

/// Builds a [Dio] client preconfigured with standard base options,
/// headers, and interceptors.
Dio buildDioClient({
  required String baseUrl,
  Duration connectTimeout = const Duration(seconds: 15),
  Duration receiveTimeout = const Duration(seconds: 15),
  Duration sendTimeout = const Duration(seconds: 15),
  Map<String, dynamic> defaultHeaders = const {},
  List<Interceptor> interceptors = const [],
  HttpClientAdapter? adapter,
}) {
  final dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
      headers: defaultHeaders,
    ),
  );

  if (adapter != null) {
    dio.httpClientAdapter = adapter;
  }

  if (interceptors.isNotEmpty) {
    dio.interceptors.addAll(interceptors);
  }

  return dio;
}
