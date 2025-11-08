import 'package:pos_venta/domain/entities/category.dart';
import 'package:pos_venta/domain/models/category_model.dart';

class CategoryMapper {
  static CategoryModel categoryToCategoryModel(Category category) {
    return CategoryModel(
      id: category.id,
      name: category.name,
      description: category.description,
    );
  }

  static Category categoryModelToCategory(CategoryModel categoryModel) {
    return Category()
      ..id = categoryModel.id
      ..name = categoryModel.name
      ..description = categoryModel.description;
  }
}
