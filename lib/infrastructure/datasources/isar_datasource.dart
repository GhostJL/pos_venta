import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pos_venta/domain/entities/category.dart';
import 'package:pos_venta/domain/entities/product.dart';
import 'package:pos_venta/domain/entities/sale.dart';
import 'package:pos_venta/domain/entities/user.dart';

class IsarDatasource {
  late Future<Isar> db;

  IsarDatasource() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationDocumentsDirectory();
      return await Isar.open([CategorySchema, ProductSchema, SaleSchema, UserSchema], directory: dir.path);
    }

    return Future.value(Isar.getInstance());
  }
}
