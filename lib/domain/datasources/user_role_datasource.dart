// domain/datasources/user_role_datasource.dart
import '../../domain/entities/user_role_entity.dart';

/// 📝 Interfaz/Contrato para interactuar con la fuente de datos de las asignaciones UserRole.
abstract class UserRoleDataSource {
  Future<List<UserRoleEntity>> getRolesByUserId(int userId);
  Future<List<UserRoleEntity>> getUsersByRoleId(int roleId);
  Future<void> assignRoleToUser(UserRoleEntity userRole);
  Future<void> removeRoleFromUser(int id); // Elimina la asignación por su ID
  Future<void> removeRoleFromUserByRelationship(
      int userId, int roleId); // Elimina por IDs
}
