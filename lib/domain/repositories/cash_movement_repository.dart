import 'package:pos_venta/domain/entities/cash_movement.dart';

abstract class CashMovementRepository {
  Future<List<CashMovement>> getAllCashMovements();
  Future<CashMovement?> getCashMovementById(int id);
  Future<void> insertCashMovement(CashMovement cashMovement);
  Future<void> updateCashMovement(CashMovement cashMovement);
  Future<void> deleteCashMovement(int id);
}
