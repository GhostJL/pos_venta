import 'package:isar/isar.dart';
import 'package:pos_venta/domain/entities/sale.dart';

part 'payment.g.dart';

@collection
class Payment {
  Id? id;

  late String type; // efectivo, tarjeta, etc.

  late double amount;

  DateTime createdAt = DateTime.now();

  @Backlink(to: 'payments')
  final sale = IsarLink<Sale>();
}
