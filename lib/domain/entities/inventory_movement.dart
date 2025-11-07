import 'package:isar/isar.dart';
import 'package:pos_venta/domain/entities/product.dart';
import 'package:pos_venta/domain/entities/user.dart';

part 'inventory_movement.g.dart';

@collection
class InventoryMovement {
  Id? id;

  final product = IsarLink<Product>();

  late String type; // entrada, salida, ajuste

  late double quantity;

  String? reason;

  final user = IsarLink<User>();

  DateTime createdAt = DateTime.now();
}
