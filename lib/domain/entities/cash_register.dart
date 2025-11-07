import 'package:isar/isar.dart';

part 'cash_register.g.dart';

@collection
class CashRegister {
  Id? id;

  late String name; // Caja 1, Caja 2, etc.

  String status = 'closed';
}
