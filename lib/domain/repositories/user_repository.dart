// domain/repositories/user_repository.dart
import '../../domain/entities/user_entity.dart';

/// 🧱 Interfaz/Contrato para el Repositorio de Usuarios.
/// Define las operaciones de negocio sobre la entidad User.
abstract class UserRepository {
  Future<List<UserEntity>> getUsers();
  Future<UserEntity?> getUserDetails(int id);
  Future<UserEntity?> login(
      String username, String passwordHash); // Ejemplo de lógica de negocio
  Future<void> createOrUpdateUser(UserEntity user);
  Future<void> removeUser(int id);
}
