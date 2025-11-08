import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_venta/config/router/app_router.dart';
import 'package:pos_venta/config/theme/app_theme.dart';
import 'package:pos_venta/infrastructure/datasources/hive_datasource.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveDatasource();
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
    );
  }
}
