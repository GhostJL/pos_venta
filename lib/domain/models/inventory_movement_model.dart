class InventoryMovementModel {
  final int? id;
  final int productId;
  final String type;
  final double quantity;
  final String? reason;
  final int userId;
  final DateTime createdAt;

  InventoryMovementModel({
    this.id,
    required this.productId,
    required this.type,
    required this.quantity,
    this.reason,
    required this.userId,
    required this.createdAt,
  });
}
