import 'package:isar/isar.dart';
import 'package:pos_venta/domain/entities/cash_session.dart';
import 'package:pos_venta/domain/entities/sale.dart';

part 'cash_sale_link.g.dart';

@collection
class CashSaleLink {
  Id? id;

  final sale = IsarLink<Sale>();

  final session = IsarLink<CashSession>();
}
