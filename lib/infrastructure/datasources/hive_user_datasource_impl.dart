import 'package:hive/hive.dart';
import 'package:pos_venta/domain/datasources/user_datasource.dart';
import 'package:pos_venta/domain/entities/user_entity.dart';
import 'package:pos_venta/infrastructure/mappers/user_mapper.dart';
import 'package:pos_venta/infrastructure/models/user_model.dart';

/// 💾 Implementación concreta de UserDataSource utilizando Hive.
class HiveUserDataSourceImpl implements UserDataSource {
  final Future<Box<UserModel>> _userBox = Hive.openBox<UserModel>('users');

  @override
  Future<UserEntity?> getUserByUsername(String username) async {
    final box = await _userBox;

    // ⭐️ CORRECCIÓN PRINCIPAL AQUÍ: Usamos .cast() para retornar un valor nullable
    // Buscamos el primer usuario cuyo username coincida
    final model = box.values.cast<UserModel?>().firstWhere(
          (user) => user?.username == username,
          orElse: () =>
              null, // Ahora retorna null de forma segura si no se encuentra
        );

    // El error "This null-check will always throw an exception" viene de la expresión
    // original: `orElse: () => null!`, que fuerza el tipo a no nulo.
    // Al usar `.cast<UserModel?>()` y `orElse: () => null`, el tipo de 'model' es UserModel?,
    // lo que permite el manejo de nulos seguro.
    return model != null ? UserMapper.toEntity(model) : null;
  }

  @override
  Future<void> saveUser(UserEntity user) async {
    final box = await _userBox;
    final model = UserMapper.fromEntity(user);

    // Si el ID es nulo, Hive añade un nuevo registro, si existe, actualiza
    final key = model.id ?? await box.add(model);

    model.id ??= key;

    // Usamos put con la clave (existente o generada)
    await box.put(key, model);
  }

  @override
  Future<List<UserEntity>> getAllUsers() async {
    final box = await _userBox;
    final userModels = box.values.toList();
    return UserMapper.toEntityList(userModels);
  }

  @override
  Future<UserEntity?> getUserById(int id) async {
    final box = await _userBox;
    final model = box.get(id);
    return model != null ? UserMapper.toEntity(model) : null;
  }

  @override
  Future<void> deleteUser(int id) async {
    final box = await _userBox;
    await box.delete(id);
  }
}
