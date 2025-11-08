import 'package:hive/hive.dart';
import 'package:pos_venta/domain/datasources/user_role_datasource.dart';
import 'package:pos_venta/domain/entities/user_role_entity.dart';
import 'package:pos_venta/infrastructure/mappers/user_role_mapper.dart';
import 'package:pos_venta/infrastructure/models/user_role_model.dart';

/// 💾 Implementación concreta de UserRoleDataSource utilizando Hive.
class HiveUserRoleDataSourceImpl implements UserRoleDataSource {
  final Future<Box<UserRoleModel>> _userRoleBox =
      Hive.openBox<UserRoleModel>('user_roles');

  @override
  Future<void> assignRoleToUser(UserRoleEntity userRole) async {
    final box = await _userRoleBox;
    final model = UserRoleMapper.fromEntity(userRole);

    // Si el ID es nulo, es una nueva asignación. Usamos .add() para autogenerar la clave.
    final key = model.id ?? await box.add(model);

    // Corregimos la lógica: si model.id fue nulo, 'key' ahora tiene el ID generado.
    // Solo necesitamos usar put con la clave generada o existente.

    // Si model.id era nulo, la clave (key) fue generada por .add(model).
    // Debemos asignar 'key' a 'model.id' para que el modelo persista la clave correcta.
    if (model.id == null) {
      model.id = key;
    }
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

    // ⭐️ CORRECCIÓN PRINCIPAL AQUÍ: Usamos .cast() y thenWhere() o .firstWhere con try/catch
    // La forma más limpia para colecciones grandes es:
    final relationship = box.values.cast<UserRoleModel?>().firstWhere(
          (model) => model?.userId == userId && model?.roleId == roleId,
          orElse: () =>
              null, // Esto ahora es seguro porque UserRoleModel? es el tipo retornado
        );

    // Si 'relationship' es nulo, no se encontró la relación, y salimos.
    // El error "operand can't be null" se dispara si relationship.id es usado sin verificar nulos,
    // pero aquí relationship es UserRoleModel?, lo cual es seguro.

    // El if statement también debe ser corregido si relationship es UserRoleModel?
    if (relationship != null) {
      // relationship.id es int? (nullable), Hive.delete lo maneja si el boxkey es dynamic.
      // Asumimos que model.id (HiveField(0)) es la clave (int?)
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
