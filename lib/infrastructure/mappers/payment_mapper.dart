import 'package:pos_venta/domain/entities/payment.dart';
import 'package:pos_venta/domain/models/payment_model.dart';

class PaymentMapper {
  static Payment paymentModelToPayment(PaymentModel paymentModel) {
    return Payment()
      ..id = paymentModel.id
      ..type = paymentModel.type
      ..amount = paymentModel.amount
      ..createdAt = paymentModel.createdAt
      ..saleId = paymentModel.saleId;
  }

  static PaymentModel paymentToPaymentModel(Payment payment) {
    return PaymentModel(
      id: payment.id,
      type: payment.type,
      amount: payment.amount,
      createdAt: payment.createdAt,
      saleId: payment.saleId,
    );
  }
}
