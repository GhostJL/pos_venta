import 'package:hive/hive.dart';
import 'package:pos_venta/domain/entities/sale_item.dart';
import 'package:pos_venta/domain/entities/payment.dart';

part 'sale.g.dart';

@HiveType(typeId: 19)
class Sale {
  @HiveField(0)
  int? id;

  @HiveField(1)
  late String ticketNumber;

  @HiveField(2)
  late int userId;

  @HiveField(3)
  int? customerId; // Opcional, para clientes registrados

  @HiveField(4)
  late double total;

  @HiveField(5)
  late double paid;

  @HiveField(6)
  late double change;

  @HiveField(7)
  late String paymentMethod; // efectivo, tarjeta, mixto

  @HiveField(8)
  String status = 'completed'; // completed, cancelled, refunded

  @HiveField(9)
  DateTime createdAt = DateTime.now();

  @HiveField(10)
  late List<SaleItem> saleItems;

  @HiveField(11)
  late List<Payment> payments;
}
