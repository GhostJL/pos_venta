import 'package:hive/hive.dart';

part 'user_role_model.g.dart';

@HiveType(typeId: 3)
class UserRoleModel {
  @HiveField(0)
  int? id;

  @HiveField(1)
  late int userId;

  @HiveField(2)
  late int roleId;

  UserRoleModel({
    this.id,
    required this.userId,
    required this.roleId,
  });
}
