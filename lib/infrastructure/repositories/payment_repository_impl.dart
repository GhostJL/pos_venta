import 'package:pos_venta/domain/datasources/payment_datasource.dart';
import 'package:pos_venta/domain/models/payment_model.dart';
import 'package:pos_venta/domain/repositories/payment_repository.dart';

class PaymentRepositoryImpl extends PaymentRepository {
  final PaymentDatasource datasource;

  PaymentRepositoryImpl(this.datasource);

  @override
  Future<PaymentModel> createPayment(PaymentModel payment) {
    return datasource.createPayment(payment);
  }

  @override
  Future<bool> deletePayment(int paymentId) {
    return datasource.deletePayment(paymentId);
  }

  @override
  Future<PaymentModel?> getPaymentById(int paymentId) {
    return datasource.getPaymentById(paymentId);
  }

  @override
  Future<List<PaymentModel>> getPayments() {
    return datasource.getPayments();
  }

  @override
  Future<PaymentModel> updatePayment(PaymentModel payment) {
    return datasource.updatePayment(payment);
  }
}
