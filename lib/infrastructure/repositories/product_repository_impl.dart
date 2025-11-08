import 'package:pos_venta/domain/models/product_model.dart';
import 'package:pos_venta/domain/repositories/product_repository.dart';
import 'package:pos_venta/infrastructure/datasources/isar_product_datasource.dart';
import 'package:pos_venta/infrastructure/mappers/product_mapper.dart';

class ProductRepositoryImpl extends ProductRepository {
  final IsarProductDatasource datasource;

  ProductRepositoryImpl(this.datasource);

  @override
  Future<void> deleteProduct(int id) {
    return datasource.deleteProduct(id);
  }

  @override
  Future<List<ProductModel>> getAllProducts() async {
    final products = await datasource.getAllProducts();
    return products.map((product) => ProductMapper.productToProductModel(product)).toList();
  }

  @override
  Future<ProductModel?> getProductById(int id) async {
    final product = await datasource.getProductById(id);
    if (product == null) return null;
    return ProductMapper.productToProductModel(product);
  }

  @override
  Future<void> insertProduct(ProductModel product) {
    final productEntity = ProductMapper.productModelToProduct(product);
    return datasource.insertProduct(productEntity);
  }

  @override
  Future<void> updateProduct(ProductModel product) {
    final productEntity = ProductMapper.productModelToProduct(product);
    return datasource.updateProduct(productEntity);
  }
}
