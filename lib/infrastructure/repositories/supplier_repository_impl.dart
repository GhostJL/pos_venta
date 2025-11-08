import 'package:pos_venta/domain/models/supplier_model.dart';
import 'package:pos_venta/domain/repositories/supplier_repository.dart';
import 'package:pos_venta/infrastructure/datasources/isar_supplier_datasource.dart';
import 'package:pos_venta/infrastructure/mappers/supplier_mapper.dart';

class SupplierRepositoryImpl extends SupplierRepository {
  final IsarSupplierDatasource datasource;

  SupplierRepositoryImpl(this.datasource);

  @override
  Future<void> deleteSupplier(int id) {
    return datasource.deleteSupplier(id);
  }

  @override
  Future<List<SupplierModel>> getAllSuppliers() async {
    final suppliers = await datasource.getAllSuppliers();
    return suppliers
        .map((supplier) => SupplierMapper.supplierToSupplierModel(supplier))
        .toList();
  }

  @override
  Future<SupplierModel?> getSupplierById(int id) async {
    final supplier = await datasource.getSupplierById(id);
    if (supplier == null) return null;
    return SupplierMapper.supplierToSupplierModel(supplier);
  }

  @override
  Future<void> insertSupplier(SupplierModel supplier) {
    final supplierEntity = SupplierMapper.supplierModelToSupplier(supplier);
    return datasource.insertSupplier(supplierEntity);
  }

  @override
  Future<void> updateSupplier(SupplierModel supplier) {
    final supplierEntity = SupplierMapper.supplierModelToSupplier(supplier);
    return datasource.updateSupplier(supplierEntity);
  }
}
