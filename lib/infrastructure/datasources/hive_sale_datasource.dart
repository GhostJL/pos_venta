import 'package:pos_venta/domain/datasources/sale_datasource.dart';
import 'package:pos_venta/domain/entities/sale.dart';
import 'package:pos_venta/infrastructure/datasources/hive_datasource.dart';

class HiveSaleDatasource extends SaleDatasource {
  final HiveDatasource hiveDatasource;

  HiveSaleDatasource(this.hiveDatasource);

  @override
  Future<void> deleteSale(int id) async {
    final box = await hiveDatasource.box<Sale>('sales');
    await box.delete(id);
  }

  @override
  Future<List<Sale>> getAllSales() async {
    final box = await hiveDatasource.box<Sale>('sales');
    return box.values.toList();
  }

  @override
  Future<Sale?> getSaleById(int id) async {
    final box = await hiveDatasource.box<Sale>('sales');
    return box.get(id);
  }

  @override
  Future<void> insertSale(Sale sale) async {
    final box = await hiveDatasource.box<Sale>('sales');
    final newId = await box.add(sale);
    sale.id = newId;
    await box.put(newId, sale);
  }

  @override
  Future<void> updateSale(Sale sale) async {
    final box = await hiveDatasource.box<Sale>('sales');
    await box.put(sale.id, sale);
  }
}
