import 'package:isar/isar.dart';
import 'package:pos_venta/domain/entities/role.dart';

part 'user.g.dart';

@collection
class User {
  Id? id;

  @Index(unique: true)
  late String username;

  late String passwordHash;

  String? pinCode;

  final role = IsarLink<Role>();

  int status = 1; // 1 = activo, 0 = desactivado

  DateTime createdAt = DateTime.now();
}