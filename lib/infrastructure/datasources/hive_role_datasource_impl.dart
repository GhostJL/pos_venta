import 'package:hive/hive.dart';
import 'package:pos_venta/domain/datasources/role_datasource.dart';
import 'package:pos_venta/domain/entities/role_entity.dart';
import '../models/role_model.dart';
import '../mappers/role_mapper.dart';

/// 💾 Implementación concreta de RoleDataSource utilizando Hive.
class HiveRoleDataSourceImpl implements RoleDataSource {
  final Future<Box<RoleModel>> _roleBox = Hive.openBox<RoleModel>('roles');

  @override
  Future<List<RoleEntity>> getAllRoles() async {
    final box = await _roleBox;
    final roleModels = box.values.toList();
    // Usamos el Mapper para convertir de Model a Entity
    return RoleMapper.toEntityList(roleModels);
  }

  @override
  Future<RoleEntity?> getRoleById(int id) async {
    final box = await _roleBox;
    final model = box.get(id); // Asumiendo que 'id' es la clave de Hive

    // Si el modelo existe, lo mapeamos a Entity
    return model != null ? RoleMapper.toEntity(model) : null;
  }

  @override
  Future<void> saveRole(RoleEntity role) async {
    final box = await _roleBox;
    // Usamos el Mapper para convertir de Entity a Model
    final model = RoleMapper.fromEntity(role);

    // Si el ID existe, se usa como clave de Hive; sino, Hive asignará una nueva.
    // NOTA: Para modelos de Hive, es común usar .put(key, value) o .add(value).
    // Si la clave es el ID, usa put; si es autoincremental, usa add.
    // Usaremos .put() asumiendo que el `id` es la clave.
    await box.put(model.id, model);
  }

  @override
  Future<void> deleteRole(int id) async {
    final box = await _roleBox;
    await box.delete(id);
  }
}
