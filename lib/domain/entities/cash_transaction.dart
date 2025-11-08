import 'package:hive/hive.dart';

part 'cash_transaction.g.dart';

@HiveType(typeId: 4)
class CashTransaction {
  @HiveField(0)
  int? id;

  @HiveField(1)
  late int cashSessionId;

  @HiveField(2)
  int? saleId;

  @HiveField(3)
  late String type; // income, expense

  @HiveField(4)
  late double amount;

  @HiveField(5)
  String? description;

  @HiveField(6)
  DateTime createdAt = DateTime.now();
}
