import 'package:hive/hive.dart';
import 'package:pos_venta/domain/datasources/supplier_datasource.dart';
import 'package:pos_venta/domain/entities/supplier.dart';
import 'package:pos_venta/infrastructure/datasources/hive_datasource.dart';

class HiveSupplierDatasource extends SupplierDatasource {
  final HiveDatasource hiveDatasource;

  HiveSupplierDatasource(this.hiveDatasource);

  @override
  Future<void> deleteSupplier(int id) async {
    final box = await hiveDatasource.box<Supplier>('suppliers');
    await box.delete(id);
  }

  @override
  Future<List<Supplier>> getAllSuppliers() async {
    final box = await hiveDatasource.box<Supplier>('suppliers');
    return box.values.toList();
  }

  @override
  Future<Supplier?> getSupplierById(int id) async {
    final box = await hiveDatasource.box<Supplier>('suppliers');
    return box.get(id);
  }

  @override
  Future<void> insertSupplier(Supplier supplier) async {
    final box = await hiveDatasource.box<Supplier>('suppliers');
    int newId = await box.add(supplier);
    supplier.id = newId;
    await box.put(newId, supplier);
  }

  @override
  Future<void> updateSupplier(Supplier supplier) async {
    final box = await hiveDatasource.box<Supplier>('suppliers');
    await box.put(supplier.id, supplier);
  }
}
