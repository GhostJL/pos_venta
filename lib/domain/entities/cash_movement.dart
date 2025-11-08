import 'package:hive/hive.dart';

part 'cash_movement.g.dart';

@HiveType(typeId: 0)
class CashMovement {
  @HiveField(0)
  int? id;

  @HiveField(1)
  late int cashSessionId;

  @HiveField(2)
  late int userId;

  @HiveField(3)
  late String type; // entrada, salida

  @HiveField(4)
  late double amount;

  @HiveField(5)
  String? reason;

  @HiveField(6)
  DateTime createdAt = DateTime.now();
}
