import 'package:hive/hive.dart';

part 'payment.g.dart';

@HiveType(typeId: 18)
class Payment {
  @HiveField(0)
  int? id;

  @HiveField(1)
  late String type; // efectivo, tarjeta, etc.

  @HiveField(2)
  late double amount;

  @HiveField(3)
  DateTime createdAt = DateTime.now();

  @HiveField(4)
  late int saleId;
}
