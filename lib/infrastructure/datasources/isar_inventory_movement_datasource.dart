import 'package:isar/isar.dart';
import 'package:pos_venta/domain/datasources/inventory_movement_datasource.dart';
import 'package:pos_venta/domain/entities/inventory_movement.dart';
import 'package:pos_venta/infrastructure/datasources/isar_datasource.dart';

class IsarInventoryMovementDatasource extends InventoryMovementDatasource {
  final IsarDatasource isarDatasource;

  IsarInventoryMovementDatasource(this.isarDatasource);

  @override
  Future<void> deleteInventoryMovement(int id) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.inventoryMovements.delete(id));
  }

  @override
  Future<List<InventoryMovement>> getAllInventoryMovements() async {
    final isar = await isarDatasource.db;
    return await isar.inventoryMovements.where().findAll();
  }

  @override
  Future<InventoryMovement?> getInventoryMovementById(int id) async {
    final isar = await isarDatasource.db;
    return await isar.inventoryMovements.get(id);
  }

  @override
  Future<void> insertInventoryMovement(InventoryMovement inventoryMovement) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.inventoryMovements.put(inventoryMovement));
  }

  @override
  Future<void> updateInventoryMovement(InventoryMovement inventoryMovement) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.inventoryMovements.put(inventoryMovement));
  }
}
