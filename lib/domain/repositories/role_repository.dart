import 'package:pos_venta/domain/models/role_model.dart';

abstract class RoleRepository {
  Future<List<RoleModel>> getAllRoles();
  Future<RoleModel?> getRoleById(int id);
  Future<void> insertRole(RoleModel role);
  Future<void> updateRole(RoleModel role);
  Future<void> deleteRole(int id);
}
