import 'package:isar/isar.dart';
import 'package:pos_venta/domain/datasources/user_datasource.dart';
import 'package:pos_venta/domain/entities/user.dart';
import 'package:pos_venta/infrastructure/datasources/isar_datasource.dart';

class IsarUserDatasource extends UserDatasource {
  final IsarDatasource isarDatasource;

  IsarUserDatasource(this.isarDatasource);

  @override
  Future<void> deleteUser(int id) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.users.delete(id));
  }

  @override
  Future<List<User>> getAllUsers() async {
    final isar = await isarDatasource.db;
    return await isar.users.where().findAll();
  }

  @override
  Future<User?> getUserById(int id) async {
    final isar = await isarDatasource.db;
    return await isar.users.get(id);
  }

  @override
  Future<void> insertUser(User user) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.users.put(user));
  }

  @override
  Future<void> updateUser(User user) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.users.put(user));
  }

  @override
  Future<User?> signIn(String email, String password) async {
    final isar = await isarDatasource.db;
    return await isar.users.filter().usernameEqualTo(email).passwordHashEqualTo(password).findFirst();
  }
}
