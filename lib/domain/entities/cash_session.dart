import 'package:hive/hive.dart';

part 'cash_session.g.dart';

@HiveType(typeId: 3)
class CashSession {
  @HiveField(0)
  int? id;

  @HiveField(1)
  late int cashRegisterId;

  @HiveField(2)
  late int userOpenedId;

  @HiveField(3)
  late double openingAmount;

  @HiveField(4)
  double? closingAmount;

  @HiveField(5)
  DateTime openedAt = DateTime.now();

  @HiveField(6)
  DateTime? closedAt;

  @HiveField(7)
  String status = 'open'; // open, closed
}
