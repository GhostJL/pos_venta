import 'package:pos_venta/domain/models/role_model.dart';

class UserModel {
  final int? id;
  final String username;
  final String passwordHash;
  final String? pinCode;
  final RoleModel? role;
  final int status;
  final DateTime createdAt;

  UserModel({
    this.id,
    required this.username,
    required this.passwordHash,
    this.pinCode,
    this.role,
    required this.status,
    required this.createdAt,
  });
}
