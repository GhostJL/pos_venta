import 'package:pos_venta/domain/entities/role.dart';
import 'package:pos_venta/domain/models/role_model.dart';

class RoleMapper {
  static RoleModel roleToRoleModel(Role role) {
    return RoleModel(
      id: role.id,
      name: role.name,
    );
  }

  static Role roleModelToRole(RoleModel roleModel) {
    return Role()
      ..id = roleModel.id
      ..name = roleModel.name;
  }
}
