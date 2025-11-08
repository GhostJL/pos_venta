import 'package:pos_venta/domain/models/inventory_movement_model.dart';
import 'package:pos_venta/domain/repositories/inventory_movement_repository.dart';
import 'package:pos_venta/infrastructure/datasources/hive_inventory_movement_datasource.dart';
import 'package:pos_venta/infrastructure/mappers/inventory_movement_mapper.dart';

class InventoryMovementRepositoryImpl extends InventoryMovementRepository {
  final HiveInventoryMovementDatasource datasource;

  InventoryMovementRepositoryImpl(this.datasource);

  @override
  Future<void> deleteInventoryMovement(int id) {
    return datasource.deleteInventoryMovement(id);
  }

  @override
  Future<List<InventoryMovementModel>> getAllInventoryMovements() async {
    final movements = await datasource.getAllInventoryMovements();
    return movements
        .map((movement) =>
            InventoryMovementMapper.inventoryMovementToInventoryMovementModel(
                movement))
        .toList();
  }

  @override
  Future<InventoryMovementModel?> getInventoryMovementById(int id) async {
    final movement = await datasource.getInventoryMovementById(id);
    if (movement == null) return null;
    return InventoryMovementMapper.inventoryMovementToInventoryMovementModel(
        movement);
  }

  @override
  Future<void> insertInventoryMovement(InventoryMovementModel inventoryMovement) {
    final movementEntity =
        InventoryMovementMapper.inventoryMovementModelToInventoryMovement(
            inventoryMovement);
    return datasource.insertInventoryMovement(movementEntity);
  }

  @override
  Future<void> updateInventoryMovement(InventoryMovementModel inventoryMovement) {
    final movementEntity =
        InventoryMovementMapper.inventoryMovementModelToInventoryMovement(
            inventoryMovement);
    return datasource.updateInventoryMovement(movementEntity);
  }
}
