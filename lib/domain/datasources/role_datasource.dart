import 'package:pos_venta/domain/entities/role.dart';

abstract class RoleDatasource {
  Future<List<Role>> getAllRoles();
  Future<Role?> getRoleById(int id);
  Future<void> insertRole(Role role);
  Future<void> updateRole(Role role);
  Future<void> deleteRole(int id);
}
