import 'package:hive/hive.dart';
import 'package:pos_venta/domain/datasources/inventory_datasource.dart';
import 'package:pos_venta/domain/entities/inventory.dart';
import 'package:pos_venta/infrastructure/datasources/hive_datasource.dart';

class HiveInventoryDatasource extends InventoryDatasource {
  final HiveDatasource hiveDatasource;

  HiveInventoryDatasource(this.hiveDatasource);

  @override
  Future<void> deleteInventory(int id) async {
    final box = await hiveDatasource.box<Inventory>('inventories');
    await box.delete(id);
  }

  @override
  Future<List<Inventory>> getAllInventories() async {
    final box = await hiveDatasource.box<Inventory>('inventories');
    return box.values.toList();
  }

  @override
  Future<Inventory?> getInventoryById(int id) async {
    final box = await hiveDatasource.box<Inventory>('inventories');
    return box.get(id);
  }

  @override
  Future<void> insertInventory(Inventory inventory) async {
    final box = await hiveDatasource.box<Inventory>('inventories');
    await box.add(inventory);
  }

  @override
  Future<void> updateInventory(Inventory inventory) async {
    final box = await hiveDatasource.box<Inventory>('inventories');
    await box.put(inventory.id, inventory);
  }
}
