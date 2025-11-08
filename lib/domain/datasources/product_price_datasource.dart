import 'package:pos_venta/domain/entities/product_price.dart';

abstract class ProductPriceDatasource {
  Future<List<ProductPrice>> getAllProductPrices();
  Future<ProductPrice?> getProductPriceById(int id);
  Future<void> insertProductPrice(ProductPrice productPrice);
  Future<void> updateProductPrice(ProductPrice productPrice);
  Future<void> deleteProductPrice(int id);
}
