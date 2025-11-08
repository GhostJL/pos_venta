import 'package:pos_venta/domain/entities/product_price.dart';
import 'package:pos_venta/domain/models/product_price_model.dart';

class ProductPriceMapper {
  static ProductPriceModel fromMap(Map<String, dynamic> map) {
    return ProductPriceModel(
      id: map['id'],
      productId: map['productId'],
      price: map['price'],
      cost: map['cost'],
      minQty: map['minQty'],
      isActive: map['isActive'],
      updatedAt: DateTime.parse(map['updatedAt']),
    );
  }

  static Map<String, dynamic> toMap(ProductPriceModel productPrice) {
    return {
      'id': productPrice.id,
      'productId': productPrice.productId,
      'price': productPrice.price,
      'cost': productPrice.cost,
      'minQty': productPrice.minQty,
      'isActive': productPrice.isActive,
      'updatedAt': productPrice.updatedAt.toIso8601String(),
    };
  }

  static ProductPrice productPriceModelToProductPrice(ProductPriceModel productPriceModel) {
    return ProductPrice()
      ..id = productPriceModel.id
      ..productId = productPriceModel.productId
      ..price = productPriceModel.price
      ..cost = productPriceModel.cost
      ..minQty = productPriceModel.minQty
      ..isActive = productPriceModel.isActive
      ..updatedAt = productPriceModel.updatedAt;
  }

  static ProductPriceModel productPriceToProductPriceModel(ProductPrice productPrice) {
    return ProductPriceModel(
      id: productPrice.id,
      productId: productPrice.productId,
      price: productPrice.price,
      cost: productPrice.cost,
      minQty: productPrice.minQty,
      isActive: productPrice.isActive,
      updatedAt: productPrice.updatedAt,
    );
  }
}
