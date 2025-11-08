import 'package:isar/isar.dart';

part 'product.g.dart';

@collection
class Product {
  Id? id;

  late String name;

  @Index(unique: true)
  String? barcode;

  int? categoryId;

  int? supplierId;

  @Index()
  bool isWeighted = false;

  String unit = 'Unidad';

  @Index()
  int status = 1;

  DateTime createdAt = DateTime.now();
}
