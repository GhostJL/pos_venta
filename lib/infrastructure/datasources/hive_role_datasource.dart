import 'package:hive/hive.dart';
import 'package:pos_venta/domain/datasources/role_datasource.dart';
import 'package:pos_venta/domain/entities/role.dart';
import 'package:pos_venta/infrastructure/datasources/hive_datasource.dart';

class HiveRoleDatasource extends RoleDatasource {
  final HiveDatasource hiveDatasource;

  HiveRoleDatasource(this.hiveDatasource);

  @override
  Future<void> deleteRole(int id) async {
    final box = await hiveDatasource.box<Role>('roles');
    await box.delete(id);
  }

  @override
  Future<List<Role>> getAllRoles() async {
    final box = await hiveDatasource.box<Role>('roles');
    return box.values.toList();
  }

  @override
  Future<Role?> getRoleById(int id) async {
    final box = await hiveDatasource.box<Role>('roles');
    return box.get(id);
  }

  @override
  Future<void> insertRole(Role role) async {
    final box = await hiveDatasource.box<Role>('roles');
    int newId = await box.add(role);
    role.id = newId;
    await box.put(newId, role);
  }

  @override
  Future<void> updateRole(Role role) async {
    final box = await hiveDatasource.box<Role>('roles');
    await box.put(role.id, role);
  }
}
