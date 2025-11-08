class ProductModel {
  final int? id;
  final String name;
  final String? barcode;
  final int? categoryId;
  final int? supplierId;
  final bool isWeighted;
  final String unit;
  final int status;
  final DateTime createdAt;

  ProductModel({
    this.id,
    required this.name,
    this.barcode,
    this.categoryId,
    this.supplierId,
    required this.isWeighted,
    required this.unit,
    required this.status,
    required this.createdAt,
  });
}
