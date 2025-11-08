// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SaleAdapter extends TypeAdapter<Sale> {
  @override
  final int typeId = 19;

  @override
  Sale read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Sale()
      ..id = fields[0] as int?
      ..ticketNumber = fields[1] as String
      ..userId = fields[2] as int
      ..customerId = fields[3] as int?
      ..total = fields[4] as double
      ..paid = fields[5] as double
      ..change = fields[6] as double
      ..paymentMethod = fields[7] as String
      ..status = fields[8] as String
      ..createdAt = fields[9] as DateTime
      ..saleItems = (fields[10] as List).cast<SaleItem>()
      ..payments = (fields[11] as List).cast<Payment>();
  }

  @override
  void write(BinaryWriter writer, Sale obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.ticketNumber)
      ..writeByte(2)
      ..write(obj.userId)
      ..writeByte(3)
      ..write(obj.customerId)
      ..writeByte(4)
      ..write(obj.total)
      ..writeByte(5)
      ..write(obj.paid)
      ..writeByte(6)
      ..write(obj.change)
      ..writeByte(7)
      ..write(obj.paymentMethod)
      ..writeByte(8)
      ..write(obj.status)
      ..writeByte(9)
      ..write(obj.createdAt)
      ..writeByte(10)
      ..write(obj.saleItems)
      ..writeByte(11)
      ..write(obj.payments);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SaleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
