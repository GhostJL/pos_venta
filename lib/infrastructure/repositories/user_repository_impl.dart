import 'package:pos_venta/domain/entities/user.dart';
import 'package:pos_venta/domain/repositories/user_repository.dart';
import 'package:pos_venta/infrastructure/datasources/isar_user_datasource.dart';

class UserRepositoryImpl extends UserRepository {
  final IsarUserDatasource datasource;

  UserRepositoryImpl(this.datasource);

  @override
  Future<void> deleteUser(int id) {
    return datasource.deleteUser(id);
  }

  @override
  Future<List<User>> getAllUsers() {
    return datasource.getAllUsers();
  }

  @override
  Future<User?> getUserById(int id) {
    return datasource.getUserById(id);
  }

  @override
  Future<void> insertUser(User user) {
    return datasource.insertUser(user);
  }

  @override
  Future<void> updateUser(User user) {
    return datasource.updateUser(user);
  }
}
