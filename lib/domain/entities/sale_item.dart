import 'package:isar/isar.dart';
import 'package:pos_venta/domain/entities/sale.dart';

part 'sale_item.g.dart';

@collection
class SaleItem {
  Id? id;

  late int productId;

  late double quantity;

  late double price;

  late double subtotal;

  @Backlink(to: 'saleItems')
  final sale = IsarLink<Sale>();
}
