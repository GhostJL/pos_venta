import 'package:hive/hive.dart';

part 'inventory.g.dart';

@HiveType(typeId: 6)
class Inventory {
  @HiveField(0)
  int? id;

  @HiveField(1)
  late int productId;

  @HiveField(2)
  double stock = 0;

  @HiveField(3)
  double minStock = 0;

  @HiveField(4)
  DateTime updatedAt = DateTime.now();
}
