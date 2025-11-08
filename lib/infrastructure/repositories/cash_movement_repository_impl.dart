import 'package:pos_venta/domain/entities/cash_movement.dart';
import 'package:pos_venta/domain/repositories/cash_movement_repository.dart';
import 'package:pos_venta/infrastructure/datasources/hive_cash_movement_datasource.dart';

class CashMovementRepositoryImpl extends CashMovementRepository {
  final HiveCashMovementDatasource datasource;

  CashMovementRepositoryImpl(this.datasource);

  @override
  Future<void> deleteCashMovement(int id) {
    return datasource.deleteCashMovement(id);
  }

  @override
  Future<List<CashMovement>> getAllCashMovements() {
    return datasource.getAllCashMovements();
  }

  @override
  Future<CashMovement?> getCashMovementById(int id) {
    return datasource.getCashMovementById(id);
  }

  @override
  Future<void> insertCashMovement(CashMovement cashMovement) {
    return datasource.insertCashMovement(cashMovement);
  }

  @override
  Future<void> updateCashMovement(CashMovement cashMovement) {
    return datasource.updateCashMovement(cashMovement);
  }
}
