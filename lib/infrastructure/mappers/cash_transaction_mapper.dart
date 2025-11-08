import 'package:pos_venta/domain/entities/cash_transaction.dart';
import 'package:pos_venta/domain/models/cash_transaction_model.dart';
import 'package:pos_venta/infrastructure/mappers/cash_session_mapper.dart';
import 'package:pos_venta/infrastructure/mappers/sale_mapper.dart';

class CashTransactionMapper {
  static CashTransactionModel cashTransactionToCashTransactionModel(
      CashTransaction cashTransaction) {
    return CashTransactionModel(
      id: cashTransaction.id,
      cashSession: cashTransaction.cashSession.value == null
          ? null
          : CashSessionMapper.cashSessionToCashSessionModel(
              cashTransaction.cashSession.value!),
      sale: cashTransaction.sale.value == null
          ? null
          : SaleMapper.saleToSaleModel(cashTransaction.sale.value!),
      type: cashTransaction.type,
      amount: cashTransaction.amount,
      description: cashTransaction.description,
      createdAt: cashTransaction.createdAt,
    );
  }

  static CashTransaction cashTransactionModelToCashTransaction(
      CashTransactionModel cashTransactionModel) {
    return CashTransaction()
      ..id = cashTransactionModel.id
      ..type = cashTransactionModel.type
      ..amount = cashTransactionModel.amount
      ..description = cashTransactionModel.description
      ..createdAt = cashTransactionModel.createdAt;
  }
}
