import 'package:pos_venta/domain/entities/sale_item.dart';
import 'package:pos_venta/domain/models/sale_item_model.dart';

class SaleItemMapper {
  static SaleItemModel saleItemToSaleItemModel(SaleItem saleItem) {
    return SaleItemModel(
      id: saleItem.id,
      saleId: saleItem.sale.value!.id!,
      productId: saleItem.productId,
      quantity: saleItem.quantity,
      price: saleItem.price,
      subtotal: saleItem.subtotal,
    );
  }

  static SaleItem saleItemModelToSaleItem(SaleItemModel saleItemModel) {
    return SaleItem()
      ..id = saleItemModel.id
      ..productId = saleItemModel.productId
      ..quantity = saleItemModel.quantity
      ..price = saleItemModel.price
      ..subtotal = saleItemModel.subtotal;
  }
}
