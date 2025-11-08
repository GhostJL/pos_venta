import 'package:isar/isar.dart';

part 'product_price.g.dart';

@collection
class ProductPrice {
  Id? id;

  late int productId;

  late double price;

  double? cost;

  int minQty = 1;

  bool isActive = true;

  DateTime updatedAt = DateTime.now();
}
