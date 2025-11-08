import 'package:hive/hive.dart';

part 'cash_register.g.dart';

@HiveType(typeId: 1)
class CashRegister {
  @HiveField(0)
  int? id;

  @HiveField(1)
  late String name; // Caja 1, Caja 2

  @HiveField(2)
  String status = 'closed'; // open, closed
}
