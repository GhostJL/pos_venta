import 'package:pos_venta/domain/datasources/cash_session_datasource.dart';
import 'package:pos_venta/domain/models/cash_session_model.dart';
import 'package:pos_venta/domain/repositories/cash_session_repository.dart';

class CashSessionRepositoryImpl extends CashSessionRepository {
  final CashSessionDatasource datasource;

  CashSessionRepositoryImpl(this.datasource);

  @override
  Future<CashSessionModel> createCashSession(CashSessionModel cashSession) {
    return datasource.createCashSession(cashSession);
  }

  @override
  Future<bool> deleteCashSession(int cashSessionId) {
    return datasource.deleteCashSession(cashSessionId);
  }

  @override
  Future<CashSessionModel?> getCashSessionById(int cashSessionId) {
    return datasource.getCashSessionById(cashSessionId);
  }

  @override
  Future<List<CashSessionModel>> getCashSessions() {
    return datasource.getCashSessions();
  }

  @override
  Future<CashSessionModel> updateCashSession(CashSessionModel cashSession) {
    return datasource.updateCashSession(cashSession);
  }
}
