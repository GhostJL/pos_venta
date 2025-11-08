import 'package:hive/hive.dart';

part 'role_model.g.dart'; // Asegúrate de cambiar el nombre del archivo generado a 'role_model.g.dart'

@HiveType(typeId: 1)
class RoleModel {
  @HiveField(0)
  int? id;

  @HiveField(1)
  late String name; // admin, cajero, gerente, etc.

  // Constructor para facilitar la creación de instancias en el mapper
  RoleModel({
    this.id,
    required this.name,
  });
}
