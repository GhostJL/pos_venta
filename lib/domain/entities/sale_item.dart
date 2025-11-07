import 'package:isar/isar.dart';
import 'package:pos_venta/domain/entities/product.dart';
import 'package:pos_venta/domain/entities/sale.dart';

part 'sale_item.g.dart';

@collection
class SaleItem {
  Id? id;

  final sale = IsarLink<Sale>();

  final product = IsarLink<Product>();

  late double quantity;

  late double price;

  late double subtotal;
}
