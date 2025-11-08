import 'package:isar/isar.dart';
import 'package:pos_venta/domain/datasources/supplier_datasource.dart';
import 'package:pos_venta/domain/entities/supplier.dart';
import 'package:pos_venta/infrastructure/datasources/isar_datasource.dart';

class IsarSupplierDatasource extends SupplierDatasource {
  final IsarDatasource isarDatasource;

  IsarSupplierDatasource(this.isarDatasource);

  @override
  Future<void> deleteSupplier(int id) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.suppliers.delete(id));
  }

  @override
  Future<List<Supplier>> getAllSuppliers() async {
    final isar = await isarDatasource.db;
    return await isar.suppliers.where().findAll();
  }

  @override
  Future<Supplier?> getSupplierById(int id) async {
    final isar = await isarDatasource.db;
    return await isar.suppliers.get(id);
  }

  @override
  Future<void> insertSupplier(Supplier supplier) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.suppliers.put(supplier));
  }

  @override
  Future<void> updateSupplier(Supplier supplier) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.suppliers.put(supplier));
  }
}
