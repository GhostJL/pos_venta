import 'package:isar/isar.dart';
import 'package:pos_venta/domain/entities/user.dart';

part 'sale.g.dart';

@collection
class Sale {
  Id? id;

  @Index(unique: true)
  int? ticketNumber;

  final user = IsarLink<User>();

  // final customer = IsarLink<Customer>(); // Customer entity not defined yet

  late double total;

  late double paid;

  late double change;

  late String paymentMethod; // efectivo, tarjeta, mixto

  String status = 'completed'; // completed, cancelled, refunded

  DateTime createdAt = DateTime.now();
}
