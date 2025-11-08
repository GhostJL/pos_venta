import 'package:pos_venta/domain/entities/user_role_entity.dart';
import 'package:pos_venta/infrastructure/models/user_role_model.dart';

/// 🚀 Mapper para transformar entre UserRoleEntity (Domain) y UserRoleModel (Data/Hive).
class UserRoleMapper {
  /// Convierte UserRoleModel (Data) a UserRoleEntity (Domain).
  static UserRoleEntity toEntity(UserRoleModel model) {
    return UserRoleEntity(
      id: model.id,
      userId: model.userId,
      roleId: model.roleId,
    );
  }

  /// Convierte una lista de UserRoleModel a una lista de UserRoleEntity.
  static List<UserRoleEntity> toEntityList(List<UserRoleModel> models) {
    return models.map((model) => toEntity(model)).toList();
  }

  /// Convierte UserRoleEntity (Domain) a UserRoleModel (Data/Hive).
  static UserRoleModel fromEntity(UserRoleEntity entity) {
    return UserRoleModel(
      id: entity.id,
      userId: entity.userId,
      roleId: entity.roleId,
    );
  }
}
