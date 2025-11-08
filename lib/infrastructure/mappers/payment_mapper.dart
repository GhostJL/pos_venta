import 'package:pos_venta/domain/entities/payment.dart';
import 'package:pos_venta/domain/models/payment_model.dart';

class PaymentMapper {
  static PaymentModel paymentToPaymentModel(Payment payment) {
    return PaymentModel(
      id: payment.id,
      saleId: payment.sale.value!.id!,
      type: payment.type,
      amount: payment.amount,
      createdAt: payment.createdAt,
    );
  }

  static Payment paymentModelToPayment(PaymentModel paymentModel) {
    return Payment()
      ..id = paymentModel.id
      ..type = paymentModel.type
      ..amount = paymentModel.amount
      ..createdAt = paymentModel.createdAt;
  }
}
