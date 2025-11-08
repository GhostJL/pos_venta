import 'package:pos_venta/domain/entities/sale.dart';
import 'package:pos_venta/domain/models/sale_model.dart';

class SaleMapper {
  static SaleModel fromMap(Map<String, dynamic> map) {
    return SaleModel(
      id: map['id'],
      ticketNumber: map['ticketNumber'],
      userId: map['userId'],
      customerId: map['customerId'],
      total: map['total'],
      paid: map['paid'],
      change: map['change'],
      paymentMethod: map['paymentMethod'],
      status: map['status'],
      createdAt: DateTime.parse(map['createdAt']),
    );
  }

  static Map<String, dynamic> toMap(SaleModel sale) {
    return {
      'id': sale.id,
      'ticketNumber': sale.ticketNumber,
      'userId': sale.userId,
      'customerId': sale.customerId,
      'total': sale.total,
      'paid': sale.paid,
      'change': sale.change,
      'paymentMethod': sale.paymentMethod,
      'status': sale.status,
      'createdAt': sale.createdAt.toIso8601String(),
    };
  }

  static Sale saleModelToSale(SaleModel saleModel) {
    return Sale()
      ..id = saleModel.id
      ..ticketNumber = saleModel.ticketNumber
      ..userId = saleModel.userId
      ..customerId = saleModel.customerId
      ..total = saleModel.total
      ..paid = saleModel.paid
      ..change = saleModel.change
      ..paymentMethod = saleModel.paymentMethod
      ..status = saleModel.status
      ..createdAt = saleModel.createdAt
      ..saleItems = []
      ..payments = [];
  }

  static SaleModel saleToSaleModel(Sale sale) {
    return SaleModel(
      id: sale.id,
      ticketNumber: sale.ticketNumber,
      userId: sale.userId,
      customerId: sale.customerId,
      total: sale.total,
      paid: sale.paid,
      change: sale.change,
      paymentMethod: sale.paymentMethod,
      status: sale.status,
      createdAt: sale.createdAt,
    );
  }
}
