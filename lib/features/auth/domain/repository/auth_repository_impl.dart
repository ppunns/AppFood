

import 'package:food_apps/features/auth/datasources/auth_remote_data_source.dart';
import 'package:food_apps/features/auth/domain/entities/user_entity.dart';
import 'package:food_apps/features/auth/domain/repository/auth_repository.dart';

class AuthRepositoryImlp implements AuthRepository{
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImlp({required this.remoteDataSource});
  @override
  Future<UserEntity> login(String email, String password) {
    return remoteDataSource.login(email, password);
  }
}