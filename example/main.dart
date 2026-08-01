import 'package:railway_dio/railway_dio.dart';

class User {
  final int id;
  final String name;

  User({required this.id, required this.name});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as int,
      name: json['name'] as String,
    );
  }
}

Future<void> main() async {
  // 1. Build a preconfigured Dio client instance
  final dio = buildDioClient(
    baseUrl: 'https://jsonplaceholder.typicode.com',
  );

  // 2. Make an HTTP request and convert it into Either<NetworkFailure, User>
  final result = await dio
      .get<Map<String, dynamic>>('/users/1')
      .toEither((data) => User.fromJson(data));

  // 3. Exhaustive pattern matching on success or failure
  result.match(
    (failure) => print('Request failed with error: $failure'),
    (user) => print('Successfully loaded User #${user.id}: ${user.name}'),
  );

  dio.close();
}
