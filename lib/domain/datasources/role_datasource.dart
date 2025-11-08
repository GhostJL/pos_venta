import 'package:pos_venta/domain/entities/role_entity.dart';

abstract class RoleDataSource {
  Future<List<RoleEntity>> getAllRoles();
  Future<RoleEntity?> getRoleById(int id);
  Future<void> saveRole(RoleEntity role);
  Future<void> deleteRole(int id);
}
