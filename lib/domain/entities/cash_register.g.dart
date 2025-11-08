// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cash_register.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CashRegisterAdapter extends TypeAdapter<CashRegister> {
  @override
  final int typeId = 1;

  @override
  CashRegister read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CashRegister()
      ..id = fields[0] as int?
      ..name = fields[1] as String
      ..status = fields[2] as String;
  }

  @override
  void write(BinaryWriter writer, CashRegister obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.status);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CashRegisterAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
