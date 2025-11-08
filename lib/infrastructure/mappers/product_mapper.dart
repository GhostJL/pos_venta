import 'package:pos_venta/domain/entities/product.dart';
import 'package:pos_venta/domain/models/product_model.dart';

class ProductMapper {
  static ProductModel fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'],
      name: map['name'],
      barcode: map['barcode'],
      categoryId: map['categoryId'],
      supplierId: map['supplierId'],
      isWeighted: map['isWeighted'] == 1,
      unit: map['unit'],
      status: map['status'],
      createdAt: DateTime.parse(map['createdAt']),
    );
  }

  static Map<String, dynamic> toMap(ProductModel product) {
    return {
      'id': product.id,
      'name': product.name,
      'barcode': product.barcode,
      'categoryId': product.categoryId,
      'supplierId': product.supplierId,
      'isWeighted': product.isWeighted ? 1 : 0,
      'unit': product.unit,
      'status': product.status,
      'createdAt': product.createdAt.toIso8601String(),
    };
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
}
