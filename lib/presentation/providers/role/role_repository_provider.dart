import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_venta/domain/repositories/role_repository.dart';
import 'package:pos_venta/infrastructure/datasources/hive_role_datasource.dart';
import 'package:pos_venta/infrastructure/repositories/role_repository_impl.dart';
import 'package:pos_venta/presentation/providers/hive_datasource_provider.dart';

final roleRepositoryProvider = Provider<RoleRepository>((ref) {
  final hiveDatasource = ref.watch(hiveDatasourceProvider);
  return RoleRepositoryImpl(HiveRoleDatasource(hiveDatasource));
});
