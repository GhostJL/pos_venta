import 'package:pos_venta/domain/models/role_model.dart';
import 'package:pos_venta/domain/repositories/role_repository.dart';
import 'package:pos_venta/infrastructure/datasources/hive_role_datasource.dart';
import 'package:pos_venta/infrastructure/mappers/role_mapper.dart';

class RoleRepositoryImpl extends RoleRepository {
  final HiveRoleDatasource datasource;

  RoleRepositoryImpl(this.datasource);

  @override
  Future<void> deleteRole(int id) {
    return datasource.deleteRole(id);
  }

  @override
  Future<List<RoleModel>> getAllRoles() async {
    final roles = await datasource.getAllRoles();
    return roles.map((role) => RoleMapper.roleToRoleModel(role)).toList();
  }

  @override
  Future<RoleModel?> getRoleById(int id) async {
    final role = await datasource.getRoleById(id);
    if (role == null) return null;
    return RoleMapper.roleToRoleModel(role);
  }

  @override
  Future<void> insertRole(RoleModel role) {
    final roleEntity = RoleMapper.roleModelToRole(role);
    return datasource.insertRole(roleEntity);
  }

  @override
  Future<void> updateRole(RoleModel role) {
    final roleEntity = RoleMapper.roleModelToRole(role);
    return datasource.updateRole(roleEntity);
  }
}
