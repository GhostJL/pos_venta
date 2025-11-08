import 'package:pos_venta/domain/models/inventory_model.dart';

abstract class InventoryRepository {
  Future<List<InventoryModel>> getAllInventories();
  Future<InventoryModel?> getInventoryById(int id);
  Future<void> insertInventory(InventoryModel inventory);
  Future<void> updateInventory(InventoryModel inventory);
  Future<void> deleteInventory(int id);
}
