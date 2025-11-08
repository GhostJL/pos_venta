import 'package:isar/isar.dart';
import 'package:pos_venta/domain/entities/cash_session.dart';
import 'package:pos_venta/domain/entities/sale.dart';

part 'cash_transaction.g.dart';

@collection
class CashTransaction {
  Id? id;

  final cashSession = IsarLink<CashSession>();

  final sale = IsarLink<Sale>();

  late String type; // income, expense

  late double amount;

  String? description;

  DateTime createdAt = DateTime.now();
}
