import 'package:hive/hive.dart';
import 'package:pos_venta/domain/datasources/cash_movement_datasource.dart';
import 'package:pos_venta/domain/entities/cash_movement.dart';
import 'package:pos_venta/infrastructure/datasources/hive_datasource.dart';

class HiveCashMovementDatasource extends CashMovementDatasource {
  final HiveDatasource hiveDatasource;

  HiveCashMovementDatasource(this.hiveDatasource);

  @override
  Future<void> deleteCashMovement(int id) async {
    final box = await hiveDatasource.box<CashMovement>('cashMovements');
    await box.delete(id);
  }

  @override
  Future<List<CashMovement>> getAllCashMovements() async {
    final box = await hiveDatasource.box<CashMovement>('cashMovements');
    return box.values.toList();
  }

  @override
  Future<CashMovement?> getCashMovementById(int id) async {
    final box = await hiveDatasource.box<CashMovement>('cashMovements');
    return box.get(id);
  }

  @override
  Future<void> insertCashMovement(CashMovement cashMovement) async {
    final box = await hiveDatasource.box<CashMovement>('cashMovements');
    await box.add(cashMovement);
  }

  @override
  Future<void> updateCashMovement(CashMovement cashMovement) async {
    final box = await hiveDatasource.box<CashMovement>('cashMovements');
    await box.put(cashMovement.id, cashMovement);
  }
}
