import 'package:pos_venta/domain/datasources/cash_register_datasource.dart';
import 'package:pos_venta/domain/models/cash_register_model.dart';
import 'package:pos_venta/domain/repositories/cash_register_repository.dart';

class CashRegisterRepositoryImpl extends CashRegisterRepository {
  final CashRegisterDatasource datasource;

  CashRegisterRepositoryImpl(this.datasource);

  @override
  Future<CashRegisterModel> createCashRegister(CashRegisterModel cashRegister) {
    return datasource.createCashRegister(cashRegister);
  }

  @override
  Future<bool> deleteCashRegister(int cashRegisterId) {
    return datasource.deleteCashRegister(cashRegisterId);
  }

  @override
  Future<CashRegisterModel?> getCashRegisterById(int cashRegisterId) {
    return datasource.getCashRegisterById(cashRegisterId);
  }

  @override
  Future<List<CashRegisterModel>> getCashRegisters() {
    return datasource.getCashRegisters();
  }

  @override
  Future<CashRegisterModel> updateCashRegister(CashRegisterModel cashRegister) {
    return datasource.updateCashRegister(cashRegister);
  }
}
