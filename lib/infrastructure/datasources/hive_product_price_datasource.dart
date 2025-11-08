import 'package:pos_venta/domain/datasources/product_price_datasource.dart';
import 'package:pos_venta/domain/entities/product_price.dart';
import 'package:pos_venta/infrastructure/datasources/hive_datasource.dart';

class HiveProductPriceDatasource extends ProductPriceDatasource {
  final HiveDatasource hiveDatasource;

  HiveProductPriceDatasource(this.hiveDatasource);

  @override
  Future<void> deleteProductPrice(int id) async {
    final box = await hiveDatasource.box<ProductPrice>('product_prices');
    await box.delete(id);
  }

  @override
  Future<List<ProductPrice>> getAllProductPrices() async {
    final box = await hiveDatasource.box<ProductPrice>('product_prices');
    return box.values.toList();
  }

  @override
  Future<ProductPrice?> getProductPriceById(int id) async {
    final box = await hiveDatasource.box<ProductPrice>('product_prices');
    return box.get(id);
  }

  @override
  Future<void> insertProductPrice(ProductPrice productPrice) async {
    final box = await hiveDatasource.box<ProductPrice>('product_prices');
    await box.add(productPrice);
  }

  @override
  Future<void> updateProductPrice(ProductPrice productPrice) async {
    final box = await hiveDatasource.box<ProductPrice>('product_prices');
    await box.put(productPrice.id, productPrice);
  }
}
