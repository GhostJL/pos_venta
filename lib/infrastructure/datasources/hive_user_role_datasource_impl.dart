import 'package:hive/hive.dart';
import 'package:pos_venta/domain/datasources/user_role_datasource.dart';
import 'package:pos_venta/domain/entities/user_role_entity.dart';
import 'package:pos_venta/infrastructure/mappers/user_role_mapper.dart';
import 'package:pos_venta/infrastructure/models/user_role_model.dart';

class HiveUserRoleDataSourceImpl implements UserRoleDataSource {
  final Future<Box<UserRoleModel>> _userRoleBox =
      Hive.openBox<UserRoleModel>('user_roles');

  @override
  Future<void> assignRoleToUser(UserRoleEntity userRole) async {
    final box = await _userRoleBox;
    final model = UserRoleMapper.fromEntity(userRole);

    final key = model.id ?? await box.add(model);

    model.id ??= key;
    await box.put(key, model);
  }

  @override
  Future<void> removeRoleFromUser(int id) async {
    final box = await _userRoleBox;
    await box.delete(id);
  }

  @override
  Future<void> removeRoleFromUserByRelationship(int userId, int roleId) async {
    final box = await _userRoleBox;

    final relationship = box.values.cast<UserRoleModel?>().firstWhere(
          (model) => model?.userId == userId && model?.roleId == roleId,
          orElse: () => null,
        );

    if (relationship != null) {
      await box.delete(relationship.id);
    }
  }

  @override
  Future<List<UserRoleEntity>> getRolesByUserId(int userId) async {
    final box = await _userRoleBox;
    final roleModels =
        box.values.where((model) => model.userId == userId).toList();
    return UserRoleMapper.toEntityList(roleModels);
  }

  @override
  Future<List<UserRoleEntity>> getUsersByRoleId(int roleId) async {
    final box = await _userRoleBox;
    final userModels =
        box.values.where((model) => model.roleId == roleId).toList();
    return UserRoleMapper.toEntityList(userModels);
  }
}
