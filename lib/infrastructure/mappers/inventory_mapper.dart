import 'package:pos_venta/domain/entities/inventory.dart';
import 'package:pos_venta/domain/models/inventory_model.dart';

class InventoryMapper {
  static InventoryModel inventoryToInventoryModel(Inventory inventory) {
    return InventoryModel(
      id: inventory.id,
      productId: inventory.productId,
      stock: inventory.stock,
      minStock: inventory.minStock,
      updatedAt: inventory.updatedAt,
    );
  }

  static Inventory inventoryModelToInventory(InventoryModel inventoryModel) {
    return Inventory()
      ..id = inventoryModel.id
      ..productId = inventoryModel.productId
      ..stock = inventoryModel.stock
      ..minStock = inventoryModel.minStock
      ..updatedAt = inventoryModel.updatedAt;
  }
}
