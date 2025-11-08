import 'package:pos_venta/domain/entities/user.dart';

abstract class UserDatasource {
  Future<List<User>> getAllUsers();
  Future<User?> getUserById(int id);
  Future<void> insertUser(User user);
  Future<void> updateUser(User user);
  Future<void> deleteUser(int id);
}
