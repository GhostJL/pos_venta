import 'package:pos_venta/domain/models/cash_sale_link_model.dart';

class CashSaleLinkMapper {
  static CashSaleLinkModel fromMap(Map<String, dynamic> map) {
    return CashSaleLinkModel(
      id: map['id'],
      cashSessionId: map['cashSessionId'],
      saleId: map['saleId'],
    );
  }

  static Map<String, dynamic> toMap(CashSaleLinkModel cashSaleLink) {
    return {
      'id': cashSaleLink.id,
      'cashSessionId': cashSaleLink.cashSessionId,
      'saleId': cashSaleLink.saleId,
    };
  }
}
