import 'package:pos_venta/domain/entities/category.dart';

abstract class CategoryDatasource {
  Future<List<Category>> getAllCategories();
  Future<Category?> getCategoryById(int id);
  Future<void> insertCategory(Category category);
  Future<void> updateCategory(Category category);
  Future<void> deleteCategory(int id);
}
