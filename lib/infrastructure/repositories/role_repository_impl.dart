import 'package:pos_venta/domain/datasources/role_datasource.dart';
import 'package:pos_venta/domain/entities/role_entity.dart';
import 'package:pos_venta/domain/repositories/role_repository.dart';

/// ⚙️ Implementación concreta del RoleRepository.
/// Se encarga de usar el/los RoleDataSource para cumplir los contratos de Domain.
class RoleRepositoryImpl implements RoleRepository {
  final RoleDataSource dataSource;

  RoleRepositoryImpl({required this.dataSource});

  @override
  Future<void> createOrUpdateRole(RoleEntity role) async {
    // El repositorio delega la lógica de guardado/actualización al datasource.
    await dataSource.saveRole(role);
  }

  @override
  Future<RoleEntity?> getRole(int id) {
    // El repositorio delega la obtención al datasource.
    return dataSource.getRoleById(id);
  }

  @override
  Future<List<RoleEntity>> getRoles() {
    // El repositorio delega la obtención de todos los roles al datasource.
    return dataSource.getAllRoles();
  }

  @override
  Future<void> removeRole(int id) {
    // El repositorio delega la eliminación al datasource.
    return dataSource.deleteRole(id);
  }
}
