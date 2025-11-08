import 'package:isar/isar.dart';
import 'package:pos_venta/domain/datasources/category_datasource.dart';
import 'package:pos_venta/domain/entities/category.dart';
import 'package:pos_venta/infrastructure/datasources/isar_datasource.dart';

class IsarCategoryDatasource extends CategoryDatasource {
  final IsarDatasource isarDatasource;

  IsarCategoryDatasource(this.isarDatasource);

  @override
  Future<void> deleteCategory(int id) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.categorys.delete(id));
  }

  @override
  Future<List<Category>> getAllCategories() async {
    final isar = await isarDatasource.db;
    return await isar.categorys.where().findAll();
  }

  @override
  Future<Category?> getCategoryById(int id) async {
    final isar = await isarDatasource.db;
    return await isar.categorys.get(id);
  }

  @override
  Future<void> insertCategory(Category category) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.categorys.put(category));
  }

  @override
  Future<void> updateCategory(Category category) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.categorys.put(category));
  }
}
