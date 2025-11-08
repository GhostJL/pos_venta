import 'package:pos_venta/domain/models/inventory_movement_model.dart';

abstract class InventoryMovementRepository {
  Future<List<InventoryMovementModel>> getAllInventoryMovements();
  Future<InventoryMovementModel?> getInventoryMovementById(int id);
  Future<void> insertInventoryMovement(InventoryMovementModel inventoryMovement);
  Future<void> updateInventoryMovement(InventoryMovementModel inventoryMovement);
  Future<void> deleteInventoryMovement(int id);
}
