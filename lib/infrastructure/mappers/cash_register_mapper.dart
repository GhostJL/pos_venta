import 'package:pos_venta/domain/entities/cash_register.dart';
import 'package:pos_venta/domain/models/cash_register_model.dart';

class CashRegisterMapper {
  static CashRegister cashRegisterModelToCashRegister(
      CashRegisterModel cashRegisterModel) {
    return CashRegister()
      ..id = cashRegisterModel.id
      ..name = cashRegisterModel.name
      ..status = cashRegisterModel.status;
  }

  static CashRegisterModel cashRegisterToCashRegisterModel(
      CashRegister cashRegister) {
    return CashRegisterModel(
      id: cashRegister.id,
      name: cashRegister.name,
      status: cashRegister.status,
    );
  }
}
