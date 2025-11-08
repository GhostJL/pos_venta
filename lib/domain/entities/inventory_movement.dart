import 'package:isar/isar.dart';

part 'inventory_movement.g.dart';

@collection
class InventoryMovement {
  Id? id;

  late int productId;

  late String type; // entrada, salida, ajuste

  late double quantity;

  String? reason;

  late int userId;

  DateTime createdAt = DateTime.now();
}
