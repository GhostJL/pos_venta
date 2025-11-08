import 'package:pos_venta/domain/entities/sale_item.dart';
import 'package:pos_venta/domain/repositories/sale_item_repository.dart';
import 'package:pos_venta/infrastructure/datasources/isar_sale_item_datasource.dart';

class SaleItemRepositoryImpl extends SaleItemRepository {
  final IsarSaleItemDatasource datasource;

  SaleItemRepositoryImpl(this.datasource);

  @override
  Future<void> deleteSaleItem(int id) {
    return datasource.deleteSaleItem(id);
  }

  @override
  Future<List<SaleItem>> getAllSaleItems() {
    return datasource.getAllSaleItems();
  }

  @override
  Future<SaleItem?> getSaleItemById(int id) {
    return datasource.getSaleItemById(id);
  }

  @override
  Future<void> insertSaleItem(SaleItem saleItem) {
    return datasource.insertSaleItem(saleItem);
  }

  @override
  Future<void> updateSaleItem(SaleItem saleItem) {
    return datasource.updateSaleItem(saleItem);
  }
}
