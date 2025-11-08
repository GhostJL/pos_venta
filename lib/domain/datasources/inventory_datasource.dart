import 'package:pos_venta/domain/entities/inventory.dart';

abstract class InventoryDatasource {
  Future<List<Inventory>> getAllInventories();
  Future<Inventory?> getInventoryById(int id);
  Future<void> insertInventory(Inventory inventory);
  Future<void> updateInventory(Inventory inventory);
  Future<void> deleteInventory(int id);
}
