import 'package:isar/isar.dart';

part 'sale_detail.g.dart';

@collection
class SaleDetail {
  Id? id;

  late int saleId;

  late int productId;

  late double quantity;

  late double price;

  double? cost;
}
