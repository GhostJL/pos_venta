import 'package:pos_venta/domain/entities/inventory_movement.dart';

abstract class InventoryMovementRepository {
  Future<List<InventoryMovement>> getAllInventoryMovements();
  Future<InventoryMovement?> getInventoryMovementById(int id);
  Future<void> insertInventoryMovement(InventoryMovement inventoryMovement);
  Future<void> updateInventoryMovement(InventoryMovement inventoryMovement);
  Future<void> deleteInventoryMovement(int id);
}
