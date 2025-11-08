import 'package:isar/isar.dart';
import 'package:pos_venta/domain/entities/sale_item.dart';
import 'package:pos_venta/domain/entities/payment.dart';

part 'sale.g.dart';

@collection
class Sale {
  Id? id;

  @Index(unique: true)
  late String ticketNumber;

  late int userId;

  int? customerId; // Opcional, para clientes registrados

  late double total;
  late double paid;
  late double change;

  late String paymentMethod; // efectivo, tarjeta, mixto

  @Index()
  String status = 'completed'; // completed, cancelled, refunded

  DateTime createdAt = DateTime.now();

  final saleItems = IsarLinks<SaleItem>();

  final payments = IsarLinks<Payment>();
}
