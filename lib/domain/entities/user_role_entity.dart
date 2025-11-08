// domain/entities/user_role_entity.dart
class UserRoleEntity {
  final int? id;
  final int userId;
  final int roleId;

  const UserRoleEntity({
    this.id,
    required this.userId,
    required this.roleId,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserRoleEntity &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          userId == other.userId &&
          roleId == other.roleId;

  @override
  int get hashCode => id.hashCode ^ userId.hashCode ^ roleId.hashCode;
}
