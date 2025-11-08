import 'package:hive/hive.dart';
import 'package:pos_venta/domain/datasources/user_datasource.dart';
import 'package:pos_venta/domain/entities/user.dart';
import 'package:pos_venta/infrastructure/datasources/hive_datasource.dart';

class HiveUserDatasource extends UserDatasource {
  final HiveDatasource hiveDatasource;

  HiveUserDatasource(this.hiveDatasource);

  @override
  Future<void> deleteUser(int id) async {
    final box = await hiveDatasource.box<User>('users');
    await box.delete(id);
  }

  @override
  Future<List<User>> getAllUsers() async {
    final box = await hiveDatasource.box<User>('users');
    return box.values.toList();
  }

  @override
  Future<User?> getUserById(int id) async {
    final box = await hiveDatasource.box<User>('users');
    return box.get(id);
  }

  @override
  Future<void> insertUser(User user) async {
    final box = await hiveDatasource.box<User>('users');
    final newId = await box.add(user);
    user.id = newId;
    await box.put(newId, user);
  }

  @override
  Future<void> updateUser(User user) async {
    final box = await hiveDatasource.box<User>('users');
    await box.put(user.id, user);
  }

  @override
  Future<User?> signIn(String email, String password) async {
    final box = await hiveDatasource.box<User>('users');
    try {
      return box.values.firstWhere(
          (user) => user.username == email && user.passwordHash == password);
    } catch (e) {
      return null;
    }
  }
}
