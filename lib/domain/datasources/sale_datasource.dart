import 'package:pos_venta/domain/entities/sale.dart';

abstract class SaleDatasource {
  Future<List<Sale>> getAllSales();
  Future<Sale?> getSaleById(int id);
  Future<void> insertSale(Sale sale);
  Future<void> updateSale(Sale sale);
  Future<void> deleteSale(int id);
}
