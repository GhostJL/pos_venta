import 'package:isar/isar.dart';

part 'inventory.g.dart';

@collection
class Inventory {
  Id? id;

  @Index(unique: true)
  late int productId;

  double stock = 0;

  double minStock = 0;

  DateTime updatedAt = DateTime.now();
}
