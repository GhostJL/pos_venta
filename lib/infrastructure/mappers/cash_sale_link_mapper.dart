import 'package:pos_venta/domain/entities/cash_sale_link.dart';
import 'package:pos_venta/domain/models/cash_sale_link_model.dart';

class CashSaleLinkMapper {
  static CashSaleLinkModel cashSaleLinkToCashSaleLinkModel(
      CashSaleLink cashSaleLink) {
    return CashSaleLinkModel(
      id: cashSaleLink.id,
      cashSessionId: cashSaleLink.cashSessionId,
      saleId: cashSaleLink.saleId,
    );
  }

  static CashSaleLink cashSaleLinkModelToCashSaleLink(
      CashSaleLinkModel cashSaleLinkModel) {
    return CashSaleLink()
      ..id = cashSaleLinkModel.id
      ..cashSessionId = cashSaleLinkModel.cashSessionId
      ..saleId = cashSaleLinkModel.saleId;
  }
}
