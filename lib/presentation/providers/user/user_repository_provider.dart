import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_venta/domain/repositories/user_repository.dart';
import 'package:pos_venta/infrastructure/datasources/hive_user_datasource.dart';
import 'package:pos_venta/infrastructure/repositories/user_repository_impl.dart';
import 'package:pos_venta/presentation/providers/hive_datasource_provider.dart';
import 'package:pos_venta/presentation/providers/role/role_repository_provider.dart';

final userRepositoryProvider = Provider<UserRepository>((ref) {
  final hiveDatasource = ref.watch(hiveDatasourceProvider);
  final roleRepository = ref.watch(roleRepositoryProvider);
  return UserRepositoryImpl(
      HiveUserDatasource(hiveDatasource), roleRepository);
});
