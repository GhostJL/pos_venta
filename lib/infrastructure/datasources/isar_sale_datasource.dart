import 'package:isar/isar.dart';
import 'package:pos_venta/domain/datasources/sale_datasource.dart';
import 'package:pos_venta/domain/entities/sale.dart';
import 'package:pos_venta/infrastructure/datasources/isar_datasource.dart';

class IsarSaleDatasource extends SaleDatasource {
  final IsarDatasource isarDatasource;

  IsarSaleDatasource(this.isarDatasource);

  @override
  Future<void> deleteSale(int id) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.sales.delete(id));
  }

  @override
  Future<List<Sale>> getAllSales() async {
    final isar = await isarDatasource.db;
    return await isar.sales.where().findAll();
  }

  @override
  Future<Sale?> getSaleById(int id) async {
    final isar = await isarDatasource.db;
    return await isar.sales.get(id);
  }

  @override
  Future<void> insertSale(Sale sale) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.sales.put(sale));
  }

  @override
  Future<void> updateSale(Sale sale) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.sales.put(sale));
  }
}
