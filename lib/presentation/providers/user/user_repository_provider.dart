import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_venta/domain/repositories/user_repository.dart';
import 'package:pos_venta/infrastructure/datasources/isar_user_datasource.dart';
import 'package:pos_venta/infrastructure/repositories/user_repository_impl.dart';
import 'package:pos_venta/presentation/providers/isar_datasource_provider.dart';

final userRepositoryProvider = Provider<UserRepository>((ref) {
  final isarDatasource = ref.watch(isarDatasourceProvider);
  return UserRepositoryImpl(IsarUserDatasource(isarDatasource));
});
