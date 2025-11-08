import 'package:hive/hive.dart';

part 'user_model.g.dart';

@HiveType(typeId: 2)
class UserModel {
  @HiveField(0)
  int? id;

  @HiveField(1)
  late String username;

  @HiveField(2)
  late String passwordHash;

  @HiveField(3)
  String? pinCode;

  @HiveField(4)
  late int roleId;

  @HiveField(5)
  int status = 1;

  @HiveField(6)
  DateTime createdAt = DateTime.now();

  UserModel({
    this.id,
    required this.username,
    required this.passwordHash,
    this.pinCode,
    required this.roleId,
    this.status = 1,
    required this.createdAt,
  });
}
