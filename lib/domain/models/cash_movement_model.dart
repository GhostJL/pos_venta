class CashMovementModel {
  final int? id;
  final int cashSessionId;
  final int userId;
  final String type;
  final double amount;
  final String? reason;
  final DateTime createdAt;

  CashMovementModel({
    this.id,
    required this.cashSessionId,
    required this.userId,
    required this.type,
    required this.amount,
    this.reason,
    required this.createdAt,
  });
}
