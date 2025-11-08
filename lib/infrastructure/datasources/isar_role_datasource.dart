import 'package:isar/isar.dart';
import 'package:pos_venta/domain/datasources/role_datasource.dart';
import 'package:pos_venta/domain/entities/role.dart';
import 'package:pos_venta/infrastructure/datasources/isar_datasource.dart';

class IsarRoleDatasource extends RoleDatasource {
  final IsarDatasource isarDatasource;

  IsarRoleDatasource(this.isarDatasource);

  @override
  Future<void> deleteRole(int id) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.roles.delete(id));
  }

  @override
  Future<List<Role>> getAllRoles() async {
    final isar = await isarDatasource.db;
    return await isar.roles.where().findAll();
  }

  @override
  Future<Role?> getRoleById(int id) async {
    final isar = await isarDatasource.db;
    return await isar.roles.get(id);
  }

  @override
  Future<void> insertRole(Role role) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.roles.put(role));
  }

  @override
  Future<void> updateRole(Role role) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.roles.put(role));
  }
}
