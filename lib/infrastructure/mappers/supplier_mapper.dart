import 'package:pos_venta/domain/entities/supplier.dart';
import 'package:pos_venta/domain/models/supplier_model.dart';

class SupplierMapper {
  static SupplierModel supplierToSupplierModel(Supplier supplier) {
    return SupplierModel(
      id: supplier.id,
      name: supplier.name,
      phone: supplier.phone,
      address: supplier.address,
    );
  }

  static Supplier supplierModelToSupplier(SupplierModel supplierModel) {
    return Supplier()
      ..id = supplierModel.id
      ..name = supplierModel.name
      ..phone = supplierModel.phone
      ..address = supplierModel.address;
  }
}
