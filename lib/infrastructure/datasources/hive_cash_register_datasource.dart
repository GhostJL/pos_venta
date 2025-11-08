import 'package:pos_venta/domain/datasources/cash_register_datasource.dart';
import 'package:pos_venta/domain/entities/cash_register.dart';
import 'package:pos_venta/domain/models/cash_register_model.dart';
import 'package:pos_venta/infrastructure/datasources/hive_datasource.dart';
import 'package:pos_venta/infrastructure/mappers/cash_register_mapper.dart';

class HiveCashRegisterDatasource extends CashRegisterDatasource {
  final HiveDatasource hiveDatasource;

  HiveCashRegisterDatasource(this.hiveDatasource);

  @override
  Future<CashRegisterModel> createCashRegister(
      CashRegisterModel cashRegister) async {
    final box = await hiveDatasource.box<CashRegister>('cashRegisters');
    final cashRegisterEntity =
        CashRegisterMapper.cashRegisterModelToCashRegister(cashRegister);

    final newId = await box.add(cashRegisterEntity);

    cashRegisterEntity.id = newId;
    await box.put(newId, cashRegisterEntity);

    return CashRegisterMapper.cashRegisterToCashRegisterModel(cashRegisterEntity);
  }

  @override
  Future<bool> deleteCashRegister(int cashRegisterId) async {
    final box = await hiveDatasource.box<CashRegister>('cashRegisters');
    await box.delete(cashRegisterId);
    return true;
  }

  @override
  Future<CashRegisterModel?> getCashRegisterById(int cashRegisterId) async {
    final box = await hiveDatasource.box<CashRegister>('cashRegisters');

    final cashRegister = box.get(cashRegisterId);

    if (cashRegister == null) return null;

    return CashRegisterMapper.cashRegisterToCashRegisterModel(cashRegister);
  }

  @override
  Future<List<CashRegisterModel>> getCashRegisters() async {
    final box = await hiveDatasource.box<CashRegister>('cashRegisters');

    final cashRegisters = box.values.toList();

    return cashRegisters
        .map((cashRegister) =>
            CashRegisterMapper.cashRegisterToCashRegisterModel(cashRegister))
        .toList();
  }

  @override
  Future<CashRegisterModel> updateCashRegister(
      CashRegisterModel cashRegister) async {
    final box = await hiveDatasource.box<CashRegister>('cashRegisters');
    final cashRegisterEntity =
        CashRegisterMapper.cashRegisterModelToCashRegister(cashRegister);

    await box.put(cashRegisterEntity.id, cashRegisterEntity);

    return cashRegister;
  }
}
