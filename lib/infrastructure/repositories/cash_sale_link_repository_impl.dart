import 'package:pos_venta/domain/entities/cash_sale_link.dart';
import 'package:pos_venta/domain/repositories/cash_sale_link_repository.dart';
import 'package:pos_venta/infrastructure/datasources/isar_cash_sale_link_datasource.dart';

class CashSaleLinkRepositoryImpl extends CashSaleLinkRepository {
  final IsarCashSaleLinkDatasource datasource;

  CashSaleLinkRepositoryImpl(this.datasource);

  @override
  Future<void> deleteCashSaleLink(int id) {
    return datasource.deleteCashSaleLink(id);
  }

  @override
  Future<List<CashSaleLink>> getAllCashSaleLinks() {
    return datasource.getAllCashSaleLinks();
  }

  @override
  Future<CashSaleLink?> getCashSaleLinkById(int id) {
    return datasource.getCashSaleLinkById(id);
  }

  @override
  Future<void> insertCashSaleLink(CashSaleLink cashSaleLink) {
    return datasource.insertCashSaleLink(cashSaleLink);
  }

  @override
  Future<void> updateCashSaleLink(CashSaleLink cashSaleLink) {
    return datasource.updateCashSaleLink(cashSaleLink);
  }
}
