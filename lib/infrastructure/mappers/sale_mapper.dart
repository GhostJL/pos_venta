import 'package:pos_venta/domain/entities/sale.dart';
import 'package:pos_venta/domain/models/sale_model.dart';

class SaleMapper {
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
      ..createdAt = saleModel.createdAt;
  }
}
