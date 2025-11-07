import 'package:isar/isar.dart';
import 'package:pos_venta/domain/entities/product.dart';

part 'product_price.g.dart';

@collection
class ProductPrice {
  Id? id;

  final product = IsarLink<Product>();

  late double price;

  double? cost;

  int minQty = 1;

  @Index()
  bool isActive = true;

  DateTime updatedAt = DateTime.now();
}
