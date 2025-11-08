import 'package:pos_venta/domain/models/sale_item_model.dart';

class SaleItemMapper {
  static SaleItemModel fromMap(Map<String, dynamic> map) {
    return SaleItemModel(
      id: map['id'],
      saleId: map['saleId'],
      productId: map['productId'],
      quantity: map['quantity'],
      price: map['price'],
      subtotal: map['subtotal'],
    );
  }

  static Map<String, dynamic> toMap(SaleItemModel saleItem) {
    return {
      'id': saleItem.id,
      'saleId': saleItem.saleId,
      'productId': saleItem.productId,
      'quantity': saleItem.quantity,
      'price': saleItem.price,
      'subtotal': saleItem.subtotal,
    };
  }
}
