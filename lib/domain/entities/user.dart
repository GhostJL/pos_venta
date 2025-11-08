import 'package:hive/hive.dart';

part 'user.g.dart';

@HiveType(typeId: 22)
class User {
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
}
