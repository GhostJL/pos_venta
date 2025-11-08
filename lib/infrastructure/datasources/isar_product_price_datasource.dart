import 'package:isar/isar.dart';
import 'package:pos_venta/domain/datasources/product_price_datasource.dart';
import 'package:pos_venta/domain/entities/product_price.dart';
import 'package:pos_venta/infrastructure/datasources/isar_datasource.dart';

class IsarProductPriceDatasource extends ProductPriceDatasource {
  final IsarDatasource isarDatasource;

  IsarProductPriceDatasource(this.isarDatasource);

  @override
  Future<void> deleteProductPrice(int id) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.productPrices.delete(id));
  }

  @override
  Future<List<ProductPrice>> getAllProductPrices() async {
    final isar = await isarDatasource.db;
    return await isar.productPrices.where().findAll();
  }

  @override
  Future<ProductPrice?> getProductPriceById(int id) async {
    final isar = await isarDatasource.db;
    return await isar.productPrices.get(id);
  }

  @override
  Future<void> insertProductPrice(ProductPrice productPrice) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.productPrices.put(productPrice));
  }

  @override
  Future<void> updateProductPrice(ProductPrice productPrice) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.productPrices.put(productPrice));
  }
}
