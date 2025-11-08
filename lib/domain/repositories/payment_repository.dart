import 'package:pos_venta/domain/models/payment_model.dart';

abstract class PaymentRepository {
  Future<List<PaymentModel>> getPayments();
  Future<PaymentModel?> getPaymentById(int paymentId);
  Future<PaymentModel> createPayment(PaymentModel payment);
  Future<PaymentModel> updatePayment(PaymentModel payment);
  Future<bool> deletePayment(int paymentId);
}
