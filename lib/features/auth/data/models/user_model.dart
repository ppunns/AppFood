import 'package:food_apps/features/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity{
  UserModel({
    required String id,
    required String name,
    required String email,
  }): super(id: id, name: name, email: email);

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(id: json['id'], name: json['name'], email: json['email']);
  }
}