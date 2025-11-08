import 'package:pos_venta/domain/entities/role_entity.dart';

abstract class RoleRepository {
  Future<List<RoleEntity>> getRoles();
  Future<RoleEntity?> getRole(int id);
  Future<void> createOrUpdateRole(RoleEntity role);
  Future<void> removeRole(int id);
}
