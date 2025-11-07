import 'package:isar/isar.dart';
import 'package:pos_venta/domain/entities/cash_register.dart';
import 'package:pos_venta/domain/entities/user.dart';

part 'cash_session.g.dart';

@collection
class CashSession {
  Id? id;

  final cashRegister = IsarLink<CashRegister>();

  final userOpened = IsarLink<User>();

  late double openingAmount;

  double? closingAmount;

  DateTime openedAt = DateTime.now();

  DateTime? closedAt;

  String status = 'open'; // open, closed
}
