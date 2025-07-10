import 'package:food_apps/features/auth/data/models/user_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

abstract class AuthRemoteDataSource {
  Future<UserModel> login(String email, String password);
}


class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final http.Client client;

  AuthRemoteDataSourceImpl({required this.client});


  @override
  Future<UserModel> login(String email, String password) async {
    final response = await client.post(
      Uri.parse('http://localhost:3000/api/auth/login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'email': email, 'password': password}),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return UserModel.fromJson(data['user']);
    } else {
      throw Exception('Login failed');
    }
  }
  
}