import 'package:pos_venta/domain/entities/cash_movement.dart';
import 'package:pos_venta/domain/models/cash_movement_model.dart';

class CashMovementMapper {
  static CashMovementModel cashMovementToCashMovementModel(
      CashMovement cashMovement) {
    return CashMovementModel(
      id: cashMovement.id,
      cashSessionId: cashMovement.cashSessionId,
      userId: cashMovement.userId,
      type: cashMovement.type,
      amount: cashMovement.amount,
      reason: cashMovement.reason,
      createdAt: cashMovement.createdAt,
    );
  }

  static CashMovement cashMovementModelToCashMovement(
      CashMovementModel cashMovementModel) {
    return CashMovement()
      ..id = cashMovementModel.id
      ..cashSessionId = cashMovementModel.cashSessionId
      ..userId = cashMovementModel.userId
      ..type = cashMovementModel.type
      ..amount = cashMovementModel.amount
      ..reason = cashMovementModel.reason
      ..createdAt = cashMovementModel.createdAt;
  }
}
