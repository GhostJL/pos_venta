class CashSessionModel {
  final int? id;
  final int cashRegisterId;
  final int userOpenedId;
  final double openingAmount;
  final double? closingAmount;
  final DateTime openedAt;
  final DateTime? closedAt;
  final String status;

  CashSessionModel({
    this.id,
    required this.cashRegisterId,
    required this.userOpenedId,
    required this.openingAmount,
    this.closingAmount,
    required this.openedAt,
    this.closedAt,
    required this.status,
  });
}
