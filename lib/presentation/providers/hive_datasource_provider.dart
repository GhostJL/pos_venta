import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_venta/infrastructure/datasources/hive_datasource.dart';

final hiveDatasourceProvider = Provider<HiveDatasource>((ref) {
  return HiveDatasource();
});
