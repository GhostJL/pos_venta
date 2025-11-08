import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_venta/infrastructure/datasources/isar_datasource.dart';

final isarDatasourceProvider = Provider<IsarDatasource>((ref) {
  return IsarDatasource();
});
