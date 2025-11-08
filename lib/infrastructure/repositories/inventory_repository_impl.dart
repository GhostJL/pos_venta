import 'package:pos_venta/domain/models/inventory_model.dart';
import 'package:pos_venta/domain/repositories/inventory_repository.dart';
import 'package:pos_venta/infrastructure/datasources/isar_inventory_datasource.dart';
import 'package:pos_venta/infrastructure/mappers/inventory_mapper.dart';

class InventoryRepositoryImpl extends InventoryRepository {
  final IsarInventoryDatasource datasource;

  InventoryRepositoryImpl(this.datasource);

  @override
  Future<void> deleteInventory(int id) {
    return datasource.deleteInventory(id);
  }

  @override
  Future<List<InventoryModel>> getAllInventories() async {
    final inventories = await datasource.getAllInventories();
    return inventories
        .map((inventory) => InventoryMapper.inventoryToInventoryModel(inventory))
        .toList();
  }

  @override
  Future<InventoryModel?> getInventoryById(int id) async {
    final inventory = await datasource.getInventoryById(id);
    if (inventory == null) return null;
    return InventoryMapper.inventoryToInventoryModel(inventory);
  }

  @override
  Future<void> insertInventory(InventoryModel inventory) {
    final inventoryEntity = InventoryMapper.inventoryModelToInventory(inventory);
    return datasource.insertInventory(inventoryEntity);
  }

  @override
  Future<void> updateInventory(InventoryModel inventory) {
    final inventoryEntity = InventoryMapper.inventoryModelToInventory(inventory);
    return datasource.updateInventory(inventoryEntity);
  }
}
