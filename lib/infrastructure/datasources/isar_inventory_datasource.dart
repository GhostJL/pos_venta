import 'package:isar/isar.dart';
import 'package:pos_venta/domain/datasources/inventory_datasource.dart';
import 'package:pos_venta/domain/entities/inventory.dart';
import 'package:pos_venta/infrastructure/datasources/isar_datasource.dart';

class IsarInventoryDatasource extends InventoryDatasource {
  final IsarDatasource isarDatasource;

  IsarInventoryDatasource(this.isarDatasource);

  @override
  Future<void> deleteInventory(int id) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.inventorys.delete(id));
  }

  @override
  Future<List<Inventory>> getAllInventories() async {
    final isar = await isarDatasource.db;
    return await isar.inventorys.where().findAll();
  }

  @override
  Future<Inventory?> getInventoryById(int id) async {
    final isar = await isarDatasource.db;
    return await isar.inventorys.get(id);
  }

  @override
  Future<void> insertInventory(Inventory inventory) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.inventorys.put(inventory));
  }

  @override
  Future<void> updateInventory(Inventory inventory) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.inventorys.put(inventory));
  }
}
