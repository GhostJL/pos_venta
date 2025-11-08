import 'package:isar/isar.dart';

part 'cash_session.g.dart';

@collection
class CashSession {
  Id? id;

  late int cashRegisterId;

  late int userOpenedId;

  late double openingAmount;

  double? closingAmount;

  DateTime openedAt = DateTime.now();

  DateTime? closedAt;

  String status = 'open'; // open, closed
}
