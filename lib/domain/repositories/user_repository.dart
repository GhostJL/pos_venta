import 'package:pos_venta/domain/models/user_model.dart';

abstract class UserRepository {
  Future<List<UserModel>> getAllUsers();
  Future<UserModel?> getUserById(int id);
  Future<void> insertUser(UserModel user);
  Future<void> updateUser(UserModel user);
  Future<void> deleteUser(int id);
  Future<UserModel?> signIn(String email, String password);
}
