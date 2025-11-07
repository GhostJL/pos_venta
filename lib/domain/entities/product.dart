import 'package:isar/isar.dart';
import 'package:pos_venta/domain/entities/category.dart';
import 'package:pos_venta/domain/entities/supplier.dart';

part 'product.g.dart';

@collection
class Product {
  Id? id;

  late String name;

  @Index(unique: true)
  String? barcode;

  final category = IsarLink<Category>();

  final supplier = IsarLink<Supplier>();

  @Index()
  bool isWeighted = false;

  String unit = 'Unidad';

  @Index()
  int status = 1;

  DateTime createdAt = DateTime.now();
}
