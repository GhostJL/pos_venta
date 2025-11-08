import 'package:isar/isar.dart';
import 'package:pos_venta/domain/entities/role.dart';
import 'package:pos_venta/domain/entities/user.dart';

part 'user_role.g.dart';

@collection
class UserRole {
  Id? id;

  final user = IsarLink<User>();

  final role = IsarLink<Role>();
}
