import 'package:hive/hive.dart';

part 'product_price.g.dart';

@HiveType(typeId: 14)
class ProductPrice {
  @HiveField(0)
  int? id;

  @HiveField(1)
  late int productId;

  @HiveField(2)
  late double price;

  @HiveField(3)
  double? cost;

  @HiveField(4)
  int minQty = 1;

  @HiveField(5)
  bool isActive = true;

  @HiveField(6)
  DateTime updatedAt = DateTime.now();
}
