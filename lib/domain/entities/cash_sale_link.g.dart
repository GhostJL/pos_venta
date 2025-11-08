// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cash_sale_link.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CashSaleLinkAdapter extends TypeAdapter<CashSaleLink> {
  @override
  final int typeId = 2;

  @override
  CashSaleLink read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CashSaleLink()
      ..id = fields[0] as int?
      ..cashSessionId = fields[1] as int
      ..saleId = fields[2] as int;
  }

  @override
  void write(BinaryWriter writer, CashSaleLink obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.cashSessionId)
      ..writeByte(2)
      ..write(obj.saleId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CashSaleLinkAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
