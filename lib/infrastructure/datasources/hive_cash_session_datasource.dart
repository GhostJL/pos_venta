import 'package:pos_venta/domain/datasources/cash_session_datasource.dart';
import 'package:pos_venta/domain/entities/cash_session.dart';
import 'package:pos_venta/domain/models/cash_session_model.dart';
import 'package:pos_venta/infrastructure/datasources/hive_datasource.dart';
import 'package:pos_venta/infrastructure/mappers/cash_session_mapper.dart';

class HiveCashSessionDatasource extends CashSessionDatasource {
  final HiveDatasource hiveDatasource;

  HiveCashSessionDatasource(this.hiveDatasource);

  @override
  Future<CashSessionModel> createCashSession(CashSessionModel cashSession) async {
    final box = await hiveDatasource.box<CashSession>('cashSessions');
    final cashSessionEntity =
        CashSessionMapper.cashSessionModelToCashSession(cashSession);

    final newId = await box.add(cashSessionEntity);
    cashSessionEntity.id = newId;

    await box.put(newId, cashSessionEntity);

    return CashSessionMapper.cashSessionToCashSessionModel(cashSessionEntity);
  }

  @override
  Future<bool> deleteCashSession(int cashSessionId) async {
    final box = await hiveDatasource.box<CashSession>('cashSessions');
    await box.delete(cashSessionId);
    return true;
  }

  @override
  Future<CashSessionModel?> getCashSessionById(int cashSessionId) async {
    final box = await hiveDatasource.box<CashSession>('cashSessions');

    final cashSession = box.get(cashSessionId);

    if (cashSession == null) return null;

    return CashSessionMapper.cashSessionToCashSessionModel(cashSession);
  }

  @override
  Future<List<CashSessionModel>> getCashSessions() async {
    final box = await hiveDatasource.box<CashSession>('cashSessions');

    final cashSessions = box.values.toList();

    return cashSessions
        .map((cashSession) =>
            CashSessionMapper.cashSessionToCashSessionModel(cashSession))
        .toList();
  }

  @override
  Future<CashSessionModel> updateCashSession(CashSessionModel cashSession) async {
    final box = await hiveDatasource.box<CashSession>('cashSessions');
    final cashSessionEntity =
        CashSessionMapper.cashSessionModelToCashSession(cashSession);

    await box.put(cashSessionEntity.id, cashSessionEntity);

    return cashSession;
  }
}
