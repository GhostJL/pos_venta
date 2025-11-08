import 'package:pos_venta/domain/entities/product_price.dart';
import 'package:pos_venta/domain/repositories/product_price_repository.dart';
import 'package:pos_venta/infrastructure/datasources/isar_product_price_datasource.dart';

class ProductPriceRepositoryImpl extends ProductPriceRepository {
  final IsarProductPriceDatasource datasource;

  ProductPriceRepositoryImpl(this.datasource);

  @override
  Future<void> deleteProductPrice(int id) {
    return datasource.deleteProductPrice(id);
  }

  @override
  Future<List<ProductPrice>> getAllProductPrices() {
    return datasource.getAllProductPrices();
  }

  @override
  Future<ProductPrice?> getProductPriceById(int id) {
    return datasource.getProductPriceById(id);
  }

  @override
  Future<void> insertProductPrice(ProductPrice productPrice) {
    return datasource.insertProductPrice(productPrice);
  }

  @override
  Future<void> updateProductPrice(ProductPrice productPrice) {
    return datasource.updateProductPrice(productPrice);
  }
}
