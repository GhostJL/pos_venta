class PaymentModel {
  final int? id;
  final int saleId;
  final String type;
  final double amount;
  final DateTime createdAt;

  PaymentModel({
    this.id,
    required this.saleId,
    required this.type,
    required this.amount,
    required this.createdAt,
  });
}
