import 'package:pos_venta/domain/entities/product.dart';
import 'package:pos_venta/domain/models/product_model.dart';

class ProductMapper {
  static ProductModel productToProductModel(Product product) {
    return ProductModel(
      id: product.id,
      name: product.name,
      barcode: product.barcode,
      categoryId: product.categoryId,
      supplierId: product.supplierId,
      isWeighted: product.isWeighted,
      unit: product.unit,
      status: product.status,
      createdAt: product.createdAt,
    );
  }

  static Product productModelToProduct(ProductModel productModel) {
    return Product()
      ..id = productModel.id
      ..name = productModel.name
      ..barcode = productModel.barcode
      ..categoryId = productModel.categoryId
      ..supplierId = productModel.supplierId
      ..isWeighted = productModel.isWeighted
      ..unit = productModel.unit
      ..status = productModel.status
      ..createdAt = productModel.createdAt;
  }
}
