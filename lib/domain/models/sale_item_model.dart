class SaleItemModel {
  final int? id;
  final int saleId;
  final int productId;
  final double quantity;
  final double price;
  final double subtotal;

  SaleItemModel({
    this.id,
    required this.saleId,
    required this.productId,
    required this.quantity,
    required this.price,
    required this.subtotal,
  });
}
