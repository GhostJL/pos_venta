import 'package:isar/isar.dart';
import 'package:pos_venta/domain/datasources/cash_movement_datasource.dart';
import 'package:pos_venta/domain/entities/cash_movement.dart';
import 'package:pos_venta/infrastructure/datasources/isar_datasource.dart';

class IsarCashMovementDatasource extends CashMovementDatasource {
  final IsarDatasource isarDatasource;

  IsarCashMovementDatasource(this.isarDatasource);

  @override
  Future<void> deleteCashMovement(int id) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.cashMovements.delete(id));
  }

  @override
  Future<List<CashMovement>> getAllCashMovements() async {
    final isar = await isarDatasource.db;
    return await isar.cashMovements.where().findAll();
  }

  @override
  Future<CashMovement?> getCashMovementById(int id) async {
    final isar = await isarDatasource.db;
    return await isar.cashMovements.get(id);
  }

  @override
  Future<void> insertCashMovement(CashMovement cashMovement) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.cashMovements.put(cashMovement));
  }

  @override
  Future<void> updateCashMovement(CashMovement cashMovement) async {
    final isar = await isarDatasource.db;
    await isar.writeTxn(() => isar.cashMovements.put(cashMovement));
  }
}
