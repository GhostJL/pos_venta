import 'package:isar/isar.dart';

part 'role.g.dart';

@collection
class Role {
  Id? id;

  @Index(unique: true)
  late String name; // admin, cajero, gerente, etc.
}