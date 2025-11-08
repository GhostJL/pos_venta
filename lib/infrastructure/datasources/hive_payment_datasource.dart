import 'package:pos_venta/domain/datasources/payment_datasource.dart';
import 'package:pos_venta/domain/entities/payment.dart';
import 'package:pos_venta/domain/models/payment_model.dart';
import 'package:pos_venta/infrastructure/datasources/hive_datasource.dart';
import 'package:pos_venta/infrastructure/mappers/payment_mapper.dart';

class HivePaymentDatasource extends PaymentDatasource {
  final HiveDatasource hiveDatasource;

  HivePaymentDatasource(this.hiveDatasource);

  @override
  Future<PaymentModel> createPayment(PaymentModel payment) async {
    final box = await hiveDatasource.box<Payment>('payments');
    final paymentEntity = PaymentMapper.paymentModelToPayment(payment);

    final newId = await box.add(paymentEntity);
    paymentEntity.id = newId;

    await box.put(newId, paymentEntity);

    return PaymentMapper.paymentToPaymentModel(paymentEntity);
  }

  @override
  Future<bool> deletePayment(int paymentId) async {
    final box = await hiveDatasource.box<Payment>('payments');
    await box.delete(paymentId);
    return true;
  }

  @override
  Future<PaymentModel?> getPaymentById(int paymentId) async {
    final box = await hiveDatasource.box<Payment>('payments');
    final payment = box.get(paymentId);
    if (payment == null) return null;
    return PaymentMapper.paymentToPaymentModel(payment);
  }

  @override
  Future<List<PaymentModel>> getPayments() async {
    final box = await hiveDatasource.box<Payment>('payments');
    return box.values
        .map((payment) => PaymentMapper.paymentToPaymentModel(payment))
        .toList();
  }

  @override
  Future<PaymentModel> updatePayment(PaymentModel payment) async {
    final box = await hiveDatasource.box<Payment>('payments');
    final paymentEntity = PaymentMapper.paymentModelToPayment(payment);
    await box.put(paymentEntity.id, paymentEntity);
    return payment;
  }
}
