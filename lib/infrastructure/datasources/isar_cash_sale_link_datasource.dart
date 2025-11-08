import 'package:isar/isar.dart';
import 'package:pos_venta/domain/datasources/cash_sale_link_datasource.dart';
import 'package:pos_venta/domain/entities/cash_sale_link.dart';
import 'package:pos_venta/infrastructure/datasources/isar_datasource.dart';

class IsarCashSaleLinkDatasource extends CashSaleLinkDatasource {
  final IsarDatasource isarDatasource;

  IsarCashSaleLinkDatasource(this.isarDatasource);

  @override
  Future<void> deleteCashSaleLink(int id) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.cashSaleLinks.delete(id));
  }

  @override
  Future<List<CashSaleLink>> getAllCashSaleLinks() async {
    final isar = await isarDatasource.db;
    return await isar.cashSaleLinks.where().findAll();
  }

  @override
  Future<CashSaleLink?> getCashSaleLinkById(int id) async {
    final isar = await isarDatasource.db;
    return await isar.cashSaleLinks.get(id);
  }

  @override
  Future<void> insertCashSaleLink(CashSaleLink cashSaleLink) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.cashSaleLinks.put(cashSaleLink));
  }

  @override
  Future<void> updateCashSaleLink(CashSaleLink cashSaleLink) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.cashSaleLinks.put(cashSaleLink));
  }
}
