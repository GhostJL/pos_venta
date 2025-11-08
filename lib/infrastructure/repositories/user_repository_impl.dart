import 'package:pos_venta/domain/datasources/user_datasource.dart';
import 'package:pos_venta/domain/entities/user_entity.dart';
import 'package:pos_venta/domain/repositories/user_repository.dart';

/// ⚙️ Implementación concreta del UserRepository.
class UserRepositoryImpl implements UserRepository {
  final UserDataSource dataSource;

  UserRepositoryImpl({required this.dataSource});

  @override
  Future<void> createOrUpdateUser(UserEntity user) {
    return dataSource.saveUser(user);
  }

  @override
  Future<UserEntity?> getUserDetails(int id) {
    return dataSource.getUserById(id);
  }

  @override
  Future<List<UserEntity>> getUsers() {
    return dataSource.getAllUsers();
  }

  @override
  Future<void> removeUser(int id) {
    return dataSource.deleteUser(id);
  }

  // Lógica de negocio de ejemplo definida en el Domain/Repository
  @override
  Future<UserEntity?> login(String username, String passwordHash) async {
    final user = await dataSource.getUserByUsername(username);

    // Nota: La verificación de hash debe hacerse aquí (en el Domain/Infrastructure).
    // Usamos comparación directa por simplicidad, pero en producción usarías bcrypt, etc.
    if (user != null && user.passwordHash == passwordHash) {
      return user;
    }
    return null;
  }
}
