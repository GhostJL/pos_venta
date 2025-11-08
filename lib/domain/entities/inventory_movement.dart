import 'package:hive/hive.dart';

part 'inventory_movement.g.dart';

@HiveType(typeId: 7)
class InventoryMovement {
  @HiveField(0)
  int? id;

  @HiveField(1)
  late int productId;

  @HiveField(2)
  late String type; // entrada, salida, ajuste

  @HiveField(3)
  late double quantity;

  @HiveField(4)
  String? reason;

  @HiveField(5)
  late int userId;

  @HiveField(6)
  DateTime createdAt = DateTime.now();
}
