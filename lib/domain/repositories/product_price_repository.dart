import 'package:pos_venta/domain/models/product_price_model.dart';

abstract class ProductPriceRepository {
  Future<List<ProductPriceModel>> getAllProductPrices();
  Future<ProductPriceModel?> getProductPriceById(int id);
  Future<void> insertProductPrice(ProductPriceModel productPrice);
  Future<void> updateProductPrice(ProductPriceModel productPrice);
  Future<void> deleteProductPrice(int id);
}
