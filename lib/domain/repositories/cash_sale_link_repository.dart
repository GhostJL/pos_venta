import 'package:pos_venta/domain/entities/cash_sale_link.dart';

abstract class CashSaleLinkRepository {
  Future<List<CashSaleLink>> getAllCashSaleLinks();
  Future<CashSaleLink?> getCashSaleLinkById(int id);
  Future<void> insertCashSaleLink(CashSaleLink cashSaleLink);
  Future<void> updateCashSaleLink(CashSaleLink cashSaleLink);
  Future<void> deleteCashSaleLink(int id);
}
