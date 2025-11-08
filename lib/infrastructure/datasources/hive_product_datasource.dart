import 'package:hive/hive.dart';
import 'package:pos_venta/domain/datasources/product_datasource.dart';
import 'package:pos_venta/domain/entities/product.dart';
import 'package:pos_venta/infrastructure/datasources/hive_datasource.dart';

class HiveProductDatasource extends ProductDatasource {
  final HiveDatasource hiveDatasource;

  HiveProductDatasource(this.hiveDatasource);

  @override
  Future<void> deleteProduct(int id) async {
    final box = await hiveDatasource.box<Product>('products');
    await box.delete(id);
  }

  @override
  Future<List<Product>> getAllProducts() async {
    final box = await hiveDatasource.box<Product>('products');
    return box.values.toList();
  }

  @override
  Future<Product?> getProductById(int id) async {
    final box = await hiveDatasource.box<Product>('products');
    return box.get(id);
  }

  @override
  Future<void> insertProduct(Product product) async {
    final box = await hiveDatasource.box<Product>('products');
    await box.add(product);
  }

  @override
  Future<void> updateProduct(Product product) async {
    final box = await hiveDatasource.box<Product>('products');
    await box.put(product.id, product);
  }
}
