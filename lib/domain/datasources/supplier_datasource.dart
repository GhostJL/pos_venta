import 'package:pos_venta/domain/entities/supplier.dart';

abstract class SupplierDatasource {
  Future<List<Supplier>> getAllSuppliers();
  Future<Supplier?> getSupplierById(int id);
  Future<void> insertSupplier(Supplier supplier);
  Future<void> updateSupplier(Supplier supplier);
  Future<void> deleteSupplier(int id);
}
