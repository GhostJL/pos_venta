import 'package:pos_venta/domain/models/user_model.dart';
import 'package:pos_venta/domain/repositories/role_repository.dart';
import 'package:pos_venta/domain/repositories/user_repository.dart';
import 'package:pos_venta/infrastructure/datasources/hive_user_datasource.dart';
import 'package:pos_venta/infrastructure/mappers/user_mapper.dart';

class UserRepositoryImpl extends UserRepository {
  final HiveUserDatasource datasource;
  final RoleRepository roleRepository;

  UserRepositoryImpl(this.datasource, this.roleRepository);

  @override
  Future<void> deleteUser(int id) {
    return datasource.deleteUser(id);
  }

  @override
  Future<List<UserModel>> getAllUsers() async {
    final users = await datasource.getAllUsers();
    final userModels = <UserModel>[];

    for (final user in users) {
      final role = await roleRepository.getRoleById(user.roleId);
      userModels.add(UserMapper.userToUserModel(user, role));
    }

    return userModels;
  }

  @override
  Future<UserModel?> getUserById(int id) async {
    final user = await datasource.getUserById(id);
    if (user == null) return null;

    final role = await roleRepository.getRoleById(user.roleId);
    return UserMapper.userToUserModel(user, role);
  }

  @override
  Future<void> insertUser(UserModel userModel) {
    final user = UserMapper.userModelToUser(userModel);
    return datasource.insertUser(user);
  }

  @override
  Future<void> updateUser(UserModel userModel) {
    final user = UserMapper.userModelToUser(userModel);
    return datasource.updateUser(user);
  }

  @override
  Future<UserModel?> signIn(String email, String password) async {
    final user = await datasource.signIn(email, password);
    if (user == null) return null;

    final role = await roleRepository.getRoleById(user.roleId);
    return UserMapper.userToUserModel(user, role);
  }
}
