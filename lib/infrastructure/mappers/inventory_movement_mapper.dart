import 'package:pos_venta/domain/entities/inventory_movement.dart';
import 'package:pos_venta/domain/models/inventory_movement_model.dart';

class InventoryMovementMapper {
  static InventoryMovementModel inventoryMovementToInventoryMovementModel(
      InventoryMovement inventoryMovement) {
    return InventoryMovementModel(
      id: inventoryMovement.id,
      productId: inventoryMovement.productId,
      type: inventoryMovement.type,
      quantity: inventoryMovement.quantity,
      reason: inventoryMovement.reason,
      userId: inventoryMovement.userId,
      createdAt: inventoryMovement.createdAt,
    );
  }

  static InventoryMovement inventoryMovementModelToInventoryMovement(
      InventoryMovementModel inventoryMovementModel) {
    return InventoryMovement()
      ..id = inventoryMovementModel.id
      ..productId = inventoryMovementModel.productId
      ..type = inventoryMovementModel.type
      ..quantity = inventoryMovementModel.quantity
      ..reason = inventoryMovementModel.reason
      ..userId = inventoryMovementModel.userId
      ..createdAt = inventoryMovementModel.createdAt;
  }
}
