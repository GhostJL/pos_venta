import 'package:pos_venta/domain/entities/product_price.dart';
import 'package:pos_venta/domain/models/product_price_model.dart';

class ProductPriceMapper {
  static ProductPriceModel productPriceToProductPriceModel(
      ProductPrice productPrice) {
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

  static ProductPrice productPriceModelToProductPrice(
      ProductPriceModel productPriceModel) {
    return ProductPrice()
      ..id = productPriceModel.id
      ..productId = productPriceModel.productId
      ..price = productPriceModel.price
      ..cost = productPriceModel.cost
      ..minQty = productPriceModel.minQty
      ..isActive = productPriceModel.isActive
      ..updatedAt = productPriceModel.updatedAt;
  }
}
