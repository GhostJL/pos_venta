import 'package:pos_venta/domain/models/category_model.dart';
import 'package:pos_venta/domain/repositories/category_repository.dart';
import 'package:pos_venta/infrastructure/datasources/hive_category_datasource.dart';
import 'package:pos_venta/infrastructure/mappers/category_mapper.dart';

class CategoryRepositoryImpl extends CategoryRepository {
  final HiveCategoryDatasource datasource;

  CategoryRepositoryImpl(this.datasource);

  @override
  Future<void> deleteCategory(int id) {
    return datasource.deleteCategory(id);
  }

  @override
  Future<List<CategoryModel>> getAllCategories() async {
    final categories = await datasource.getAllCategories();
    return categories
        .map((category) => CategoryMapper.categoryToCategoryModel(category))
        .toList();
  }

  @override
  Future<CategoryModel?> getCategoryById(int id) async {
    final category = await datasource.getCategoryById(id);
    if (category == null) return null;
    return CategoryMapper.categoryToCategoryModel(category);
  }

  @override
  Future<void> insertCategory(CategoryModel category) {
    final categoryEntity = CategoryMapper.categoryModelToCategory(category);
    return datasource.insertCategory(categoryEntity);
  }

  @override
  Future<void> updateCategory(CategoryModel category) {
    final categoryEntity = CategoryMapper.categoryModelToCategory(category);
    return datasource.updateCategory(categoryEntity);
  }
}
