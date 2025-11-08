import 'package:hive/hive.dart';

part 'role.g.dart';

@HiveType(typeId: 17)
class Role {
  @HiveField(0)
  int? id;

  @HiveField(1)
  late String name; // admin, cajero, gerente, etc.
}
