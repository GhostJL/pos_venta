import 'package:pos_venta/domain/datasources/sale_item_datasource.dart';
import 'package:pos_venta/domain/entities/sale_item.dart';
import 'package:pos_venta/infrastructure/datasources/hive_datasource.dart';

class HiveSaleItemDatasource extends SaleItemDatasource {
  final HiveDatasource hiveDatasource;

  HiveSaleItemDatasource(this.hiveDatasource);

  @override
  Future<void> deleteSaleItem(int id) async {
    final box = await hiveDatasource.box<SaleItem>('sale_items');
    await box.delete(id);
  }

  @override
  Future<List<SaleItem>> getAllSaleItems() async {
    final box = await hiveDatasource.box<SaleItem>('sale_items');
    return box.values.toList();
  }

  @override
  Future<SaleItem?> getSaleItemById(int id) async {
    final box = await hiveDatasource.box<SaleItem>('sale_items');
    return box.get(id);
  }

  @override
  Future<void> insertSaleItem(SaleItem saleItem) async {
    final box = await hiveDatasource.box<SaleItem>('sale_items');
    await box.add(saleItem);
  }

  @override
  Future<void> updateSaleItem(SaleItem saleItem) async {
    final box = await hiveDatasource.box<SaleItem>('sale_items');
    await box.put(saleItem.id, saleItem);
  }
}
