import 'package:hive/hive.dart';

part 'user_role.g.dart';

@HiveType(typeId: 15)
class UserRole {
  @HiveField(0)
  int? id;

  @HiveField(1)
  late int userId;

  @HiveField(2)
  late int roleId;
}
