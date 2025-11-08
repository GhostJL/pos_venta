import 'package:isar/isar.dart';

part 'cash_register.g.dart';

@collection
class CashRegister {
  Id? id;

  @Index(unique: true)
  late String name; // Caja 1, Caja 2

  String status = 'closed'; // open, closed
}
