
import 'package:pos_venta/domain/datasources/user_role_datasource.dart';
import 'package:pos_venta/domain/entities/user_role_entity.dart';
import 'package:pos_venta/domain/repositories/user_role_repository.dart';

/// ⚙️ Implementación concreta del UserRoleRepository.
class UserRoleRepositoryImpl implements UserRoleRepository {
  final UserRoleDataSource dataSource;

  UserRoleRepositoryImpl({required this.dataSource});

  @override
  Future<void> assignRole(int userId, int roleId) async {
    // 1. Crear la entidad a partir de los IDs
    final assignment = UserRoleEntity(
      userId: userId,
      roleId: roleId,
      // id será nulo, el datasource se encargará de generarlo al guardar
    );
    
    // 2. Delegar la persistencia al datasource
    await dataSource.assignRoleToUser(assignment);
  }

  @override
  Future<List<UserRoleEntity>> findRolesByUserId(int userId) {
    return dataSource.getRolesByUserId(userId);
  }

  @override
  Future<List<UserRoleEntity>> findUsersByRoleId(int roleId) {
    return dataSource.getUsersByRoleId(roleId);
  }

  @override
  Future<void> unassignRole(int userId, int roleId) {
    // Delegamos al datasource para que encuentre y elimine la asignación específica
    return dataSource.removeRoleFromUserByRelationship(userId, roleId);
  }
}