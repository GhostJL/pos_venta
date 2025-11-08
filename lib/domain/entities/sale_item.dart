import 'package:hive/hive.dart';

part 'sale_item.g.dart';

@HiveType(typeId: 20)
class SaleItem {
  @HiveField(0)
  int? id;

  @HiveField(1)
  late int productId;

  @HiveField(2)
  late double quantity;

  @HiveField(3)
  late double price;

  @HiveField(4)
  late double subtotal;
}
