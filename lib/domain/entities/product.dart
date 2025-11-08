import 'package:hive/hive.dart';

part 'product.g.dart';

@HiveType(typeId: 8)
class Product {
  @HiveField(0)
  int? id;

  @HiveField(1)
  late String name;

  @HiveField(2)
  String? barcode;

  @HiveField(3)
  int? categoryId;

  @HiveField(4)
  int? supplierId;

  @HiveField(5)
  bool isWeighted = false;

  @HiveField(6)
  String unit = 'Unidad';

  @HiveField(7)
  int status = 1;

  @HiveField(8)
  DateTime createdAt = DateTime.now();
}
