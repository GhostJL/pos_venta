import 'package:pos_venta/domain/models/sale_model.dart';
import 'package:pos_venta/domain/repositories/sale_repository.dart';
import 'package:pos_venta/infrastructure/datasources/isar_sale_datasource.dart';
import 'package:pos_venta/infrastructure/mappers/sale_mapper.dart';

class SaleRepositoryImpl extends SaleRepository {
  final IsarSaleDatasource datasource;

  SaleRepositoryImpl(this.datasource);

  @override
  Future<void> deleteSale(int id) {
    return datasource.deleteSale(id);
  }

  @override
  Future<List<SaleModel>> getAllSales() async {
    final sales = await datasource.getAllSales();
    return sales.map((sale) => SaleMapper.saleToSaleModel(sale)).toList();
  }

  @override
  Future<SaleModel?> getSaleById(int id) async {
    final sale = await datasource.getSaleById(id);
    if (sale == null) return null;
    return SaleMapper.saleToSaleModel(sale);
  }

  @override
  Future<void> insertSale(SaleModel sale) {
    final saleEntity = SaleMapper.saleModelToSale(sale);
    return datasource.insertSale(saleEntity);
  }

  @override
  Future<void> updateSale(SaleModel sale) {
    final saleEntity = SaleMapper.saleModelToSale(sale);
    return datasource.updateSale(saleEntity);
  }
}
