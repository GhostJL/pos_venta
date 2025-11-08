// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cash_session.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CashSessionAdapter extends TypeAdapter<CashSession> {
  @override
  final int typeId = 3;

  @override
  CashSession read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CashSession()
      ..id = fields[0] as int?
      ..cashRegisterId = fields[1] as int
      ..userOpenedId = fields[2] as int
      ..openingAmount = fields[3] as double
      ..closingAmount = fields[4] as double?
      ..openedAt = fields[5] as DateTime
      ..closedAt = fields[6] as DateTime?
      ..status = fields[7] as String;
  }

  @override
  void write(BinaryWriter writer, CashSession obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.cashRegisterId)
      ..writeByte(2)
      ..write(obj.userOpenedId)
      ..writeByte(3)
      ..write(obj.openingAmount)
      ..writeByte(4)
      ..write(obj.closingAmount)
      ..writeByte(5)
      ..write(obj.openedAt)
      ..writeByte(6)
      ..write(obj.closedAt)
      ..writeByte(7)
      ..write(obj.status);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CashSessionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
