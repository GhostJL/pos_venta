import 'package:pos_venta/domain/entities/sale_item.dart';

abstract class SaleItemRepository {
  Future<List<SaleItem>> getAllSaleItems();
  Future<SaleItem?> getSaleItemById(int id);
  Future<void> insertSaleItem(SaleItem saleItem);
  Future<void> updateSaleItem(SaleItem saleItem);
  Future<void> deleteSaleItem(int id);
}
