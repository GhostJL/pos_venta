import 'package:pos_venta/domain/entities/inventory_movement.dart';
import 'package:pos_venta/domain/repositories/inventory_movement_repository.dart';
import 'package:pos_venta/infrastructure/datasources/isar_inventory_movement_datasource.dart';

class InventoryMovementRepositoryImpl extends InventoryMovementRepository {
  final IsarInventoryMovementDatasource datasource;

  InventoryMovementRepositoryImpl(this.datasource);

  @override
  Future<void> deleteInventoryMovement(int id) {
    return datasource.deleteInventoryMovement(id);
  }

  @override
  Future<List<InventoryMovement>> getAllInventoryMovements() {
    return datasource.getAllInventoryMovements();
  }

  @override
  Future<InventoryMovement?> getInventoryMovementById(int id) {
    return datasource.getInventoryMovementById(id);
  }

  @override
  Future<void> insertInventoryMovement(InventoryMovement inventoryMovement) {
    return datasource.insertInventoryMovement(inventoryMovement);
  }

  @override
  Future<void> updateInventoryMovement(InventoryMovement inventoryMovement) {
    return datasource.updateInventoryMovement(inventoryMovement);
  }
}
