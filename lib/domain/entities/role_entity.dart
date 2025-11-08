/// Clase pura de la capa de Domain.
/// Representa el concepto de 'Rol' en el negocio.
class RoleEntity {
  final int? id;
  final String name;

  const RoleEntity({
    this.id,
    required this.name,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RoleEntity &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name;

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}
