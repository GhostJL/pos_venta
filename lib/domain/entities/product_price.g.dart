// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_price.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductPriceAdapter extends TypeAdapter<ProductPrice> {
  @override
  final int typeId = 14;

  @override
  ProductPrice read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductPrice()
      ..id = fields[0] as int?
      ..productId = fields[1] as int
      ..price = fields[2] as double
      ..cost = fields[3] as double?
      ..minQty = fields[4] as int
      ..isActive = fields[5] as bool
      ..updatedAt = fields[6] as DateTime;
  }

  @override
  void write(BinaryWriter writer, ProductPrice obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.productId)
      ..writeByte(2)
      ..write(obj.price)
      ..writeByte(3)
      ..write(obj.cost)
      ..writeByte(4)
      ..write(obj.minQty)
      ..writeByte(5)
      ..write(obj.isActive)
      ..writeByte(6)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductPriceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
