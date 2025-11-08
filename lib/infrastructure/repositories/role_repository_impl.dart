import 'package:pos_venta/domain/entities/role.dart';
import 'package:pos_venta/domain/repositories/role_repository.dart';
import 'package:pos_venta/infrastructure/datasources/isar_role_datasource.dart';

class RoleRepositoryImpl extends RoleRepository {
  final IsarRoleDatasource datasource;

  RoleRepositoryImpl(this.datasource);

  @override
  Future<void> deleteRole(int id) {
    return datasource.deleteRole(id);
  }

  @override
  Future<List<Role>> getAllRoles() {
    return datasource.getAllRoles();
  }

  @override
  Future<Role?> getRoleById(int id) {
    return datasource.getRoleById(id);
  }

  @override
  Future<void> insertRole(Role role) {
    return datasource.insertRole(role);
  }

  @override
  Future<void> updateRole(Role role) {
    return datasource.updateRole(role);
  }
}
