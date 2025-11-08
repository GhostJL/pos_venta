import 'package:pos_venta/domain/models/cash_session_model.dart';
import 'package:pos_venta/domain/models/sale_model.dart';

class CashTransactionModel {
  final int? id;
  final CashSessionModel? cashSession;
  final SaleModel? sale;
  final String type;
  final double amount;
  final String? description;
  final DateTime createdAt;

  CashTransactionModel({
    this.id,
    this.cashSession,
    this.sale,
    required this.type,
    required this.amount,
    this.description,
    required this.createdAt,
  });
}
