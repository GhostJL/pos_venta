class SaleModel {
  final int? id;
  final String ticketNumber;
  final int userId;
  final int? customerId;
  final double total;
  final double paid;
  final double change;
  final String paymentMethod;
  final String status;
  final DateTime createdAt;

  SaleModel({
    this.id,
    required this.ticketNumber,
    required this.userId,
    this.customerId,
    required this.total,
    required this.paid,
    required this.change,
    required this.paymentMethod,
    required this.status,
    required this.createdAt,
  });
}
