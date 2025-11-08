import 'package:pos_venta/domain/entities/inventory.dart';
import 'package:pos_venta/domain/models/inventory_model.dart';

class InventoryMapper {
  static InventoryModel fromMap(Map<String, dynamic> map) {
    return InventoryModel(
      id: map['id'],
      productId: map['productId'],
      stock: map['stock'],
      minStock: map['minStock'],
      updatedAt: DateTime.parse(map['updatedAt']),
    );
  }

  static Map<String, dynamic> toMap(InventoryModel inventory) {
    return {
      'id': inventory.id,
      'productId': inventory.productId,
      'stock': inventory.stock,
      'minStock': inventory.minStock,
      'updatedAt': inventory.updatedAt.toIso8601String(),
    };
  }

  static Inventory inventoryModelToInventory(InventoryModel inventoryModel) {
    return Inventory()
      ..id = inventoryModel.id
      ..productId = inventoryModel.productId
      ..stock = inventoryModel.stock
      ..minStock = inventoryModel.minStock
      ..updatedAt = inventoryModel.updatedAt;
  }

  static InventoryModel inventoryToInventoryModel(Inventory inventory) {
    return InventoryModel(
      id: inventory.id,
      productId: inventory.productId,
      stock: inventory.stock,
      minStock: inventory.minStock,
      updatedAt: inventory.updatedAt,
    );
  }
}
