import 'package:isar/isar.dart';
import 'package:pos_venta/domain/datasources/cash_session_datasource.dart';
import 'package:pos_venta/domain/entities/cash_session.dart';
import 'package:pos_venta/domain/models/cash_session_model.dart';
import 'package:pos_venta/infrastructure/datasources/isar_datasource.dart';
import 'package:pos_venta/infrastructure/mappers/cash_session_mapper.dart';

class IsarCashSessionDatasource extends CashSessionDatasource {
  final IsarDatasource isarDatasource;

  IsarCashSessionDatasource(this.isarDatasource);

  @override
  Future<CashSessionModel> createCashSession(CashSessionModel cashSession) async {
    final isar = await isarDatasource.db;
    final cashSessionEntity =
        CashSessionMapper.cashSessionModelToCashSession(cashSession);

    await isar.writeTxn(() => isar.cashSessions.put(cashSessionEntity));

    return cashSession;
  }

  @override
  Future<bool> deleteCashSession(int cashSessionId) async {
    final isar = await isarDatasource.db;
    return await isar.writeTxn(() => isar.cashSessions.delete(cashSessionId));
  }

  @override
  Future<CashSessionModel?> getCashSessionById(int cashSessionId) async {
    final isar = await isarDatasource.db;

    final cashSession = await isar.cashSessions.get(cashSessionId);

    if (cashSession == null) return null;

    return CashSessionMapper.cashSessionToCashSessionModel(cashSession);
  }

  @override
  Future<List<CashSessionModel>> getCashSessions() async {
    final isar = await isarDatasource.db;

    final cashSessions = await isar.cashSessions.where().findAll();

    return cashSessions
        .map((cashSession) =>
            CashSessionMapper.cashSessionToCashSessionModel(cashSession))
        .toList();
  }

  @override
  Future<CashSessionModel> updateCashSession(CashSessionModel cashSession) async {
    final isar = await isarDatasource.db;
    final cashSessionEntity =
        CashSessionMapper.cashSessionModelToCashSession(cashSession);

    await isar.writeTxn(() => isar.cashSessions.put(cashSessionEntity));

    return cashSession;
  }
}
