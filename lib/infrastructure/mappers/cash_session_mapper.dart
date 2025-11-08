import 'package:pos_venta/domain/entities/cash_session.dart';
import 'package:pos_venta/domain/models/cash_session_model.dart';

class CashSessionMapper {
  static CashSession cashSessionModelToCashSession(
      CashSessionModel cashSessionModel) {
    return CashSession()
      ..id = cashSessionModel.id
      ..cashRegisterId = cashSessionModel.cashRegisterId
      ..userOpenedId = cashSessionModel.userOpenedId
      ..openingAmount = cashSessionModel.openingAmount
      ..closingAmount = cashSessionModel.closingAmount
      ..openedAt = cashSessionModel.openedAt
      ..closedAt = cashSessionModel.closedAt
      ..status = cashSessionModel.status;
  }

  static CashSessionModel cashSessionToCashSessionModel(
      CashSession cashSession) {
    return CashSessionModel(
      id: cashSession.id,
      cashRegisterId: cashSession.cashRegisterId,
      userOpenedId: cashSession.userOpenedId,
      openingAmount: cashSession.openingAmount,
      closingAmount: cashSession.closingAmount,
      openedAt: cashSession.openedAt,
      closedAt: cashSession.closedAt,
      status: cashSession.status,
    );
  }

  static CashSessionModel fromMap(Map<String, dynamic> map) {
    return CashSessionModel(
      id: map['id'],
      cashRegisterId: map['cashRegisterId'],
      userOpenedId: map['userOpenedId'],
      openingAmount: map['openingAmount'],
      closingAmount: map['closingAmount'],
      openedAt: DateTime.parse(map['openedAt']),
      closedAt: map['closedAt'] != null ? DateTime.parse(map['closedAt']) : null,
      status: map['status'],
    );
  }

  static Map<String, dynamic> toMap(CashSessionModel cashSession) {
    return {
      'id': cashSession.id,
      'cashRegisterId': cashSession.cashRegisterId,
      'userOpenedId': cashSession.userOpenedId,
      'openingAmount': cashSession.openingAmount,
      'closingAmount': cashSession.closingAmount,
      'openedAt': cashSession.openedAt.toIso8601String(),
      'closedAt': cashSession.closedAt?.toIso8601String(),
      'status': cashSession.status,
    };
  }
}
