import 'package:isar/isar.dart';

part 'cash_movement.g.dart';

@collection
class CashMovement {
  Id? id;

  late int cashSessionId;

  late int userId;

  late String type; // entrada, salida

  late double amount;

  String? reason;

  DateTime createdAt = DateTime.now();
}
