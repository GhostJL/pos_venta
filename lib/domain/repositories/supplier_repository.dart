import 'package:pos_venta/domain/models/supplier_model.dart';

abstract class SupplierRepository {
  Future<List<SupplierModel>> getAllSuppliers();
  Future<SupplierModel?> getSupplierById(int id);
  Future<void> insertSupplier(SupplierModel supplier);
  Future<void> updateSupplier(SupplierModel supplier);
  Future<void> deleteSupplier(int id);
}
