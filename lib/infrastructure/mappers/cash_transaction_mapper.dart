import 'package:pos_venta/infrastructure/mappers/cash_session_mapper.dart';
import 'package:pos_venta/infrastructure/mappers/sale_mapper.dart';
import 'package:pos_venta/domain/models/cash_transaction_model.dart';

class CashTransactionMapper {
  static CashTransactionModel fromMap(Map<String, dynamic> map) {
    return CashTransactionModel(
      id: map['id'],
      cashSession: map['cashSession'] != null
          ? CashSessionMapper.fromMap(map['cashSession'])
          : null,
      sale: map['sale'] != null ? SaleMapper.fromMap(map['sale']) : null,
      type: map['type'],
      amount: map['amount'],
      description: map['description'],
      createdAt: DateTime.parse(map['createdAt']),
    );
  }

  static Map<String, dynamic> toMap(CashTransactionModel cashTransaction) {
    return {
      'id': cashTransaction.id,
      'cashSession': cashTransaction.cashSession != null
          ? CashSessionMapper.toMap(cashTransaction.cashSession!)
          : null,
      'sale':
          cashTransaction.sale != null ? SaleMapper.toMap(cashTransaction.sale!) : null,
      'type': cashTransaction.type,
      'amount': cashTransaction.amount,
      'description': cashTransaction.description,
      'createdAt': cashTransaction.createdAt.toIso8601String(),
    };
  }
}
