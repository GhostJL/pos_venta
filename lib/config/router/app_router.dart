import 'package:go_router/go_router.dart';
import 'package:pos_venta/presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/sign-in-screen',
  routes: [
    GoRoute(
      path: '/sign-in-screen',
      name: SignInScreen.name,
      builder: (context, state) => SignInScreen(),
    ),
  ],
);
