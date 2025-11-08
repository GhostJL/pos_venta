class InventoryModel {
  final int? id;
  final int productId;
  final double stock;
  final double minStock;
  final DateTime updatedAt;

  InventoryModel({
    this.id,
    required this.productId,
    required this.stock,
    required this.minStock,
    required this.updatedAt,
  });
}
