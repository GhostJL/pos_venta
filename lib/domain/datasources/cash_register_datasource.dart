import 'package:pos_venta/domain/models/cash_register_model.dart';

abstract class CashRegisterDatasource {
  Future<List<CashRegisterModel>> getCashRegisters();
  Future<CashRegisterModel?> getCashRegisterById(int cashRegisterId);
  Future<CashRegisterModel> createCashRegister(CashRegisterModel cashRegister);
  Future<CashRegisterModel> updateCashRegister(CashRegisterModel cashRegister);
  Future<bool> deleteCashRegister(int cashRegisterId);
}
