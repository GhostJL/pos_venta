import 'package:hive/hive.dart';
import 'package:pos_venta/domain/datasources/cash_sale_link_datasource.dart';
import 'package:pos_venta/domain/entities/cash_sale_link.dart';
import 'package:pos_venta/infrastructure/datasources/hive_datasource.dart';

class HiveCashSaleLinkDatasource extends CashSaleLinkDatasource {
  final HiveDatasource hiveDatasource;

  HiveCashSaleLinkDatasource(this.hiveDatasource);

  @override
  Future<void> deleteCashSaleLink(int id) async {
    final box = await hiveDatasource.box<CashSaleLink>('cashSaleLinks');
    await box.delete(id);
  }

  @override
  Future<List<CashSaleLink>> getAllCashSaleLinks() async {
    final box = await hiveDatasource.box<CashSaleLink>('cashSaleLinks');
    return box.values.toList();
  }

  @override
  Future<CashSaleLink?> getCashSaleLinkById(int id) async {
    final box = await hiveDatasource.box<CashSaleLink>('cashSaleLinks');
    return box.get(id);
  }

  @override
  Future<void> insertCashSaleLink(CashSaleLink cashSaleLink) async {
    final box = await hiveDatasource.box<CashSaleLink>('cashSaleLinks');
    await box.add(cashSaleLink);
  }

  @override
  Future<void> updateCashSaleLink(CashSaleLink cashSaleLink) async {
    final box = await hiveDatasource.box<CashSaleLink>('cashSaleLinks');
    await box.put(cashSaleLink.id, cashSaleLink);
  }
}
