import 'package:pos_venta/domain/entities/role.dart';
import 'package:pos_venta/domain/models/role_model.dart';

class RoleMapper {
  static RoleModel fromMap(Map<String, dynamic> map) {
    return RoleModel(
      id: map['id'],
      name: map['name'],
    );
  }

  static Map<String, dynamic> toMap(RoleModel role) {
    return {
      'id': role.id,
      'name': role.name,
    };
  }

  static Role roleModelToRole(RoleModel roleModel) {
    return Role()
      ..id = roleModel.id
      ..name = roleModel.name;
  }

  static RoleModel roleToRoleModel(Role role) {
    return RoleModel(
      id: role.id,
      name: role.name,
    );
  }
}
