import 'package:pos_venta/domain/models/product_price_model.dart';
import 'package:pos_venta/domain/repositories/product_price_repository.dart';
import 'package:pos_venta/infrastructure/datasources/hive_product_price_datasource.dart';
import 'package:pos_venta/infrastructure/mappers/product_price_mapper.dart';

class ProductPriceRepositoryImpl extends ProductPriceRepository {
  final HiveProductPriceDatasource datasource;

  ProductPriceRepositoryImpl(this.datasource);

  @override
  Future<void> deleteProductPrice(int id) {
    return datasource.deleteProductPrice(id);
  }

  @override
  Future<List<ProductPriceModel>> getAllProductPrices() async {
    final productPrices = await datasource.getAllProductPrices();
    return productPrices
        .map((productPrice) =>
            ProductPriceMapper.productPriceToProductPriceModel(productPrice))
        .toList();
  }

  @override
  Future<ProductPriceModel?> getProductPriceById(int id) async {
    final productPrice = await datasource.getProductPriceById(id);
    if (productPrice == null) return null;
    return ProductPriceMapper.productPriceToProductPriceModel(productPrice);
  }

  @override
  Future<void> insertProductPrice(ProductPriceModel productPrice) {
    final productPriceEntity =
        ProductPriceMapper.productPriceModelToProductPrice(productPrice);
    return datasource.insertProductPrice(productPriceEntity);
  }

  @override
  Future<void> updateProductPrice(ProductPriceModel productPrice) {
    final productPriceEntity =
        ProductPriceMapper.productPriceModelToProductPrice(productPrice);
    return datasource.updateProductPrice(productPriceEntity);
  }
}
