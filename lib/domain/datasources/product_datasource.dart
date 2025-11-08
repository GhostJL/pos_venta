import 'package:pos_venta/domain/entities/product.dart';

abstract class ProductDatasource {
  Future<List<Product>> getAllProducts();
  Future<Product?> getProductById(int id);
  Future<void> insertProduct(Product product);
  Future<void> updateProduct(Product product);
  Future<void> deleteProduct(int id);
}
