// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cash_transaction.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CashTransactionAdapter extends TypeAdapter<CashTransaction> {
  @override
  final int typeId = 4;

  @override
  CashTransaction read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CashTransaction()
      ..id = fields[0] as int?
      ..cashSessionId = fields[1] as int
      ..saleId = fields[2] as int?
      ..type = fields[3] as String
      ..amount = fields[4] as double
      ..description = fields[5] as String?
      ..createdAt = fields[6] as DateTime;
  }

  @override
  void write(BinaryWriter writer, CashTransaction obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.cashSessionId)
      ..writeByte(2)
      ..write(obj.saleId)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.amount)
      ..writeByte(5)
      ..write(obj.description)
      ..writeByte(6)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CashTransactionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
