import 'package:pos_venta/domain/entities/role_entity.dart';
import 'package:pos_venta/infrastructure/models/role_model.dart';

/// 🚀 Mapper para transformar entre RoleEntity (Domain) y RoleModel (Data/Hive).
class RoleMapper {
  /// Convierte un RoleModel (Data) a un RoleEntity (Domain).
  /// Esto es clave para que la capa de Domain solo trabaje con sus propias entidades.
  static RoleEntity toEntity(RoleModel model) {
    return RoleEntity(
      id: model.id,
      name: model.name,
    );
  }

  /// Convierte una lista de RoleModel a una lista de RoleEntity.
  static List<RoleEntity> toEntityList(List<RoleModel> models) {
    return models.map((model) => toEntity(model)).toList();
  }

  /// Convierte un RoleEntity (Domain) a un RoleModel (Data).
  /// Esto es necesario cuando se va a guardar o actualizar en la fuente de datos (Hive).
  static RoleModel fromEntity(RoleEntity entity) {
    return RoleModel(
      id: entity.id,
      name: entity.name,
    );
  }

  /// Convierte una lista de RoleEntity a una lista de RoleModel.
  static List<RoleModel> fromEntityList(List<RoleEntity> entities) {
    return entities.map((entity) => fromEntity(entity)).toList();
  }
}
