class ProductPriceModel {
  final int? id;
  final int productId;
  final double price;
  final double? cost;
  final int minQty;
  final bool isActive;
  final DateTime updatedAt;

  ProductPriceModel({
    this.id,
    required this.productId,
    required this.price,
    this.cost,
    required this.minQty,
    required this.isActive,
    required this.updatedAt,
  });
}
