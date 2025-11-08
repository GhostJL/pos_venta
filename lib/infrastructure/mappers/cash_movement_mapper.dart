import 'package:pos_venta/domain/models/cash_movement_model.dart';

class CashMovementMapper {
  static CashMovementModel fromMap(Map<String, dynamic> map) {
    return CashMovementModel(
      id: map['id'],
      cashSessionId: map['cashSessionId'],
      userId: map['userId'],
      type: map['type'],
      amount: map['amount'],
      reason: map['reason'],
      createdAt: DateTime.parse(map['createdAt']),
    );
  }

  static Map<String, dynamic> toMap(CashMovementModel cashMovement) {
    return {
      'id': cashMovement.id,
      'cashSessionId': cashMovement.cashSessionId,
      'userId': cashMovement.userId,
      'type': cashMovement.type,
      'amount': cashMovement.amount,
      'reason': cashMovement.reason,
      'createdAt': cashMovement.createdAt.toIso8601String(),
    };
  }
}
