import 'package:pos_venta/domain/models/cash_session_model.dart';

abstract class CashSessionDatasource {
  Future<List<CashSessionModel>> getCashSessions();
  Future<CashSessionModel?> getCashSessionById(int cashSessionId);
  Future<CashSessionModel> createCashSession(CashSessionModel cashSession);
  Future<CashSessionModel> updateCashSession(CashSessionModel cashSession);
  Future<bool> deleteCashSession(int cashSessionId);
}
