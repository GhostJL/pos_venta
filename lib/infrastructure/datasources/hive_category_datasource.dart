import 'package:hive/hive.dart';
import 'package:pos_venta/domain/datasources/category_datasource.dart';
import 'package:pos_venta/domain/entities/category.dart';
import 'package:pos_venta/infrastructure/datasources/hive_datasource.dart';

class HiveCategoryDatasource extends CategoryDatasource {
  final HiveDatasource hiveDatasource;

  HiveCategoryDatasource(this.hiveDatasource);

  @override
  Future<void> deleteCategory(int id) async {
    final box = await hiveDatasource.box<Category>('categories');
    await box.delete(id);
  }

  @override
  Future<List<Category>> getAllCategories() async {
    final box = await hiveDatasource.box<Category>('categories');
    return box.values.toList();
  }

  @override
  Future<Category?> getCategoryById(int id) async {
    final box = await hiveDatasource.box<Category>('categories');
    return box.get(id);
  }

  @override
  Future<void> insertCategory(Category category) async {
    final box = await hiveDatasource.box<Category>('categories');
    await box.add(category);
  }

  @override
  Future<void> updateCategory(Category category) async {
    final box = await hiveDatasource.box<Category>('categories');
    await box.put(category.id, category);
  }
}
