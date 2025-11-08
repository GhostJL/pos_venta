// domain/entities/user_entity.dart
class UserEntity {
  final int? id;
  final String username;
  final String passwordHash;
  final String? pinCode;
  final int roleId; // Mantenemos solo el ID para que la entidad sea pura
  final int status;
  final DateTime createdAt;

  const UserEntity({
    this.id,
    required this.username,
    required this.passwordHash,
    this.pinCode,
    required this.roleId,
    this.status = 1,
    required this.createdAt,
  });

  // Método opcional para crear una copia (útil para inmutabilidad)
  UserEntity copyWith({
    int? id,
    String? username,
    String? passwordHash,
    String? pinCode,
    int? roleId,
    int? status,
    DateTime? createdAt,
  }) {
    return UserEntity(
      id: id ?? this.id,
      username: username ?? this.username,
      passwordHash: passwordHash ?? this.passwordHash,
      pinCode: pinCode ?? this.pinCode,
      roleId: roleId ?? this.roleId,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
