import 'package:pos_venta/domain/entities/user_entity.dart';
import 'package:pos_venta/infrastructure/models/user_model.dart';

/// 🚀 Mapper para transformar entre UserEntity (Domain) y UserModel (Data/Hive).
class UserMapper {
  /// Convierte UserModel (Data) a UserEntity (Domain).
  static UserEntity toEntity(UserModel model) {
    return UserEntity(
      id: model.id,
      username: model.username,
      passwordHash: model.passwordHash,
      pinCode: model.pinCode,
      roleId: model.roleId,
      status: model.status,
      createdAt: model.createdAt,
    );
  }

  /// Convierte una lista de UserModel a una lista de UserEntity.
  static List<UserEntity> toEntityList(List<UserModel> models) {
    return models.map((model) => toEntity(model)).toList();
  }

  /// Convierte UserEntity (Domain) a UserModel (Data/Hive).
  static UserModel fromEntity(UserEntity entity) {
    // Usamos el constructor del modelo para asegurar que todos los campos sean mapeados
    return UserModel(
      id: entity.id,
      username: entity.username,
      passwordHash: entity.passwordHash,
      pinCode: entity.pinCode,
      roleId: entity.roleId,
      status: entity.status,
      // Usar el .createdAt de la entidad para respetar el valor del dominio
      createdAt: entity.createdAt,
    );
  }
}
