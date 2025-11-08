import 'package:isar/isar.dart';
import 'package:pos_venta/domain/datasources/sale_item_datasource.dart';
import 'package:pos_venta/domain/entities/sale_item.dart';
import 'package:pos_venta/infrastructure/datasources/isar_datasource.dart';

class IsarSaleItemDatasource extends SaleItemDatasource {
  final IsarDatasource isarDatasource;

  IsarSaleItemDatasource(this.isarDatasource);

  @override
  Future<void> deleteSaleItem(int id) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.saleItems.delete(id));
  }

  @override
  Future<List<SaleItem>> getAllSaleItems() async {
    final isar = await isarDatasource.db;
    return await isar.saleItems.where().findAll();
  }

  @override
  Future<SaleItem?> getSaleItemById(int id) async {
    final isar = await isarDatasource.db;
    return await isar.saleItems.get(id);
  }

  @override
  Future<void> insertSaleItem(SaleItem saleItem) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.saleItems.put(saleItem));
  }

  @override
  Future<void> updateSaleItem(SaleItem saleItem) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.saleItems.put(saleItem));
  }
}
