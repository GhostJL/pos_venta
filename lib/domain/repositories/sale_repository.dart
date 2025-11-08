import 'package:pos_venta/domain/models/sale_model.dart';

abstract class SaleRepository {
  Future<List<SaleModel>> getAllSales();
  Future<SaleModel?> getSaleById(int id);
  Future<void> insertSale(SaleModel sale);
  Future<void> updateSale(SaleModel sale);
  Future<void> deleteSale(int id);
}
