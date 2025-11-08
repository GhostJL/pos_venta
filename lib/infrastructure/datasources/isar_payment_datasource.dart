import 'package:isar/isar.dart';
import 'package:pos_venta/domain/datasources/payment_datasource.dart';
import 'package:pos_venta/domain/entities/payment.dart';
import 'package:pos_venta/domain/models/payment_model.dart';
import 'package:pos_venta/infrastructure/datasources/isar_datasource.dart';
import 'package:pos_venta/infrastructure/mappers/payment_mapper.dart';

class IsarPaymentDatasource extends PaymentDatasource {
  final IsarDatasource isarDatasource;

  IsarPaymentDatasource(this.isarDatasource);

  @override
  Future<PaymentModel> createPayment(PaymentModel payment) async {
    final isar = await isarDatasource.db;
    final paymentEntity = PaymentMapper.paymentModelToPayment(payment);

    await isar.writeTxn(() => isar.payments.put(paymentEntity));

    return payment;
  }

  @override
  Future<bool> deletePayment(int paymentId) async {
    final isar = await isarDatasource.db;
    return await isar.writeTxn(() => isar.payments.delete(paymentId));
  }

  @override
  Future<PaymentModel?> getPaymentById(int paymentId) async {
    final isar = await isarDatasource.db;

    final payment = await isar.payments.get(paymentId);

    if (payment == null) return null;

    return PaymentMapper.paymentToPaymentModel(payment);
  }

  @override
  Future<List<PaymentModel>> getPayments() async {
    final isar = await isarDatasource.db;

    final payments = await isar.payments.where().findAll();

    return payments
        .map((payment) => PaymentMapper.paymentToPaymentModel(payment))
        .toList();
  }

  @override
  Future<PaymentModel> updatePayment(PaymentModel payment) async {
    final isar = await isarDatasource.db;
    final paymentEntity = PaymentMapper.paymentModelToPayment(payment);

    await isar.writeTxn(() => isar.payments.put(paymentEntity));

    return payment;
  }
}
