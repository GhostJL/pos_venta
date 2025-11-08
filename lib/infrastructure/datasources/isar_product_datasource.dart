import 'package:isar/isar.dart';
import 'package:pos_venta/domain/datasources/product_datasource.dart';
import 'package:pos_venta/domain/entities/product.dart';
import 'package:pos_venta/infrastructure/datasources/isar_datasource.dart';

class IsarProductDatasource extends ProductDatasource {
  final IsarDatasource isarDatasource;

  IsarProductDatasource(this.isarDatasource);

  @override
  Future<void> deleteProduct(int id) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.products.delete(id));
  }

  @override
  Future<List<Product>> getAllProducts() async {
    final isar = await isarDatasource.db;
    return await isar.products.where().findAll();
  }

  @override
  Future<Product?> getProductById(int id) async {
    final isar = await isarDatasource.db;
    return await isar.products.get(id);
  }

  @override
  Future<void> insertProduct(Product product) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.products.put(product));
  }

  @override
  Future<void> updateProduct(Product product) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.products.put(product));
  }
}
