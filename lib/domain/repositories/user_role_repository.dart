// domain/repositories/user_role_repository.dart
import '../../domain/entities/user_role_entity.dart';

/// 🧱 Interfaz/Contrato para el Repositorio de Asignación de Roles.
abstract class UserRoleRepository {
  Future<List<UserRoleEntity>> findRolesByUserId(int userId);
  Future<List<UserRoleEntity>> findUsersByRoleId(int roleId);
  Future<void> assignRole(int userId, int roleId);
  Future<void> unassignRole(int userId, int roleId);
}