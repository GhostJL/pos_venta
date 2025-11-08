// domain/datasources/user_datasource.dart
import '../../domain/entities/user_entity.dart';

/// 📝 Interfaz/Contrato para interactuar con la fuente de datos de usuarios (e.g., Hive).
abstract class UserDataSource {
  Future<List<UserEntity>> getAllUsers();
  Future<UserEntity?> getUserById(int id);
  Future<UserEntity?> getUserByUsername(String username);
  Future<void> saveUser(UserEntity user);
  Future<void> deleteUser(int id);
}
