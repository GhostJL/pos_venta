// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_movement.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InventoryMovementAdapter extends TypeAdapter<InventoryMovement> {
  @override
  final int typeId = 7;

  @override
  InventoryMovement read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return InventoryMovement()
      ..id = fields[0] as int?
      ..productId = fields[1] as int
      ..type = fields[2] as String
      ..quantity = fields[3] as double
      ..reason = fields[4] as String?
      ..userId = fields[5] as int
      ..createdAt = fields[6] as DateTime;
  }

  @override
  void write(BinaryWriter writer, InventoryMovement obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.productId)
      ..writeByte(2)
      ..write(obj.type)
      ..writeByte(3)
      ..write(obj.quantity)
      ..writeByte(4)
      ..write(obj.reason)
      ..writeByte(5)
      ..write(obj.userId)
      ..writeByte(6)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InventoryMovementAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
