import 'package:isar/isar.dart';

part 'user.g.dart';

@collection
class User {
  Id? id;

  @Index(unique: true)
  late String username;

  late String passwordHash;

  String? pinCode;

  late int roleId;

  int status = 1;

  DateTime createdAt = DateTime.now();
}
