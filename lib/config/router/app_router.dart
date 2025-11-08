import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pos_venta/presentation/screens/screens.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/login-screen',
    routes: [
      GoRoute(
        path: '/login-screen',
        name: LoginScreen.name,
        builder: (context, state) => const LoginScreen(),
      ),
    ],
  );
});
