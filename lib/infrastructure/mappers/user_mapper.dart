import 'package:pos_venta/domain/entities/user.dart';
import 'package:pos_venta/domain/models/role_model.dart';
import 'package:pos_venta/infrastructure/mappers/role_mapper.dart';
import 'package:pos_venta/domain/models/user_model.dart';

class UserMapper {
  static UserModel fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      username: map['username'],
      passwordHash: map['passwordHash'],
      pinCode: map['pinCode'],
      role: map['role'] != null ? RoleMapper.fromMap(map['role']) : null,
      status: map['status'],
      createdAt: DateTime.parse(map['createdAt']),
    );
  }

  static Map<String, dynamic> toMap(UserModel user) {
    return {
      'id': user.id,
      'username': user.username,
      'passwordHash': user.passwordHash,
      'pinCode': user.pinCode,
      'role': user.role != null ? RoleMapper.toMap(user.role!) : null,
      'status': user.status,
      'createdAt': user.createdAt.toIso8601String(),
    };
  }

  static User userModelToUser(UserModel userModel) {
    return User()
      ..id = userModel.id
      ..username = userModel.username
      ..passwordHash = userModel.passwordHash
      ..pinCode = userModel.pinCode
      ..roleId = userModel.role!.id!
      ..status = userModel.status
      ..createdAt = userModel.createdAt;
  }

  static UserModel userToUserModel(User user, RoleModel? role) {
    return UserModel(
      id: user.id,
      username: user.username,
      passwordHash: user.passwordHash,
      pinCode: user.pinCode,
      role: role,
      status: user.status,
      createdAt: user.createdAt,
    );
  }
}
