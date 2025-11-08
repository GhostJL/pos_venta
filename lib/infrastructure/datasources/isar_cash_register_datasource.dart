import 'package:isar/isar.dart';
import 'package:pos_venta/domain/datasources/cash_register_datasource.dart';
import 'package:pos_venta/domain/entities/cash_register.dart';
import 'package:pos_venta/domain/models/cash_register_model.dart';
import 'package:pos_venta/infrastructure/datasources/isar_datasource.dart';
import 'package:pos_venta/infrastructure/mappers/cash_register_mapper.dart';

class IsarCashRegisterDatasource extends CashRegisterDatasource {
  final IsarDatasource isarDatasource;

  IsarCashRegisterDatasource(this.isarDatasource);

  @override
  Future<CashRegisterModel> createCashRegister(
      CashRegisterModel cashRegister) async {
    final isar = await isarDatasource.db;
    final cashRegisterEntity =
        CashRegisterMapper.cashRegisterModelToCashRegister(cashRegister);

    await isar.writeTxn(() => isar.cashRegisters.put(cashRegisterEntity));

    return cashRegister;
  }

  @override
  Future<bool> deleteCashRegister(int cashRegisterId) async {
    final isar = await isarDatasource.db;
    return await isar
        .writeTxn(() => isar.cashRegisters.delete(cashRegisterId));
  }

  @override
  Future<CashRegisterModel?> getCashRegisterById(int cashRegisterId) async {
    final isar = await isarDatasource.db;

    final cashRegister = await isar.cashRegisters.get(cashRegisterId);

    if (cashRegister == null) return null;

    return CashRegisterMapper.cashRegisterToCashRegisterModel(cashRegister);
  }

  @override
  Future<List<CashRegisterModel>> getCashRegisters() async {
    final isar = await isarDatasource.db;

    final cashRegisters = await isar.cashRegisters.where().findAll();

    return cashRegisters
        .map((cashRegister) =>
            CashRegisterMapper.cashRegisterToCashRegisterModel(cashRegister))
        .toList();
  }

  @override
  Future<CashRegisterModel> updateCashRegister(
      CashRegisterModel cashRegister) async {
    final isar = await isarDatasource.db;
    final cashRegisterEntity =
        CashRegisterMapper.cashRegisterModelToCashRegister(cashRegister);

    await isar.writeTxn(() => isar.cashRegisters.put(cashRegisterEntity));

    return cashRegister;
  }
}
