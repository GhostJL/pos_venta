import 'package:pos_venta/domain/datasources/inventory_movement_datasource.dart';
import 'package:pos_venta/domain/entities/inventory_movement.dart';
import 'package:pos_venta/infrastructure/datasources/hive_datasource.dart';

class HiveInventoryMovementDatasource extends InventoryMovementDatasource {
  final HiveDatasource hiveDatasource;

  HiveInventoryMovementDatasource(this.hiveDatasource);

  @override
  Future<void> deleteInventoryMovement(int id) async {
    final box = await hiveDatasource.box<InventoryMovement>('inventory_movements');
    await box.delete(id);
  }

  @override
  Future<List<InventoryMovement>> getAllInventoryMovements() async {
    final box = await hiveDatasource.box<InventoryMovement>('inventory_movements');
    return box.values.toList();
  }

  @override
  Future<InventoryMovement?> getInventoryMovementById(int id) async {
    final box = await hiveDatasource.box<InventoryMovement>('inventory_movements');
    return box.get(id);
  }

  @override
  Future<void> insertInventoryMovement(InventoryMovement inventoryMovement) async {
    final box = await hiveDatasource.box<InventoryMovement>('inventory_movements');
    await box.add(inventoryMovement);
  }

  @override
  Future<void> updateInventoryMovement(InventoryMovement inventoryMovement) async {
    final box = await hiveDatasource.box<InventoryMovement>('inventory_movements');
    await box.put(inventoryMovement.id, inventoryMovement);
  }
}
