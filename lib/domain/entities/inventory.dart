import 'package:isar/isar.dart';
import 'package:pos_venta/domain/entities/product.dart';

part 'inventory.g.dart';

@collection
class Inventory {
  Id? id;

  final product = IsarLink<Product>();

  double stock = 0;

  double minStock = 0;

  DateTime updatedAt = DateTime.now();
}
