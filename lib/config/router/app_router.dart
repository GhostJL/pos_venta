import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pos_venta/presentation/providers/user/logged_in_user_provider.dart';
import 'package:pos_venta/presentation/screens/screens.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  final loggedInUser = ref.watch(loggedInUserProvider);

  return GoRouter(
    initialLocation: '/sign-in-screen',
    routes: [
      GoRoute(
        path: '/sign-in-screen',
        name: SignInScreen.name,
        builder: (context, state) => const SignInScreen(),
      ),
      GoRoute(
        path: '/home-screen',
        name: HomeScreen.name,
        builder: (context, state) => const HomeScreen(),
      ),
    ],
    redirect: (context, state) {
      final bool loggingIn = state.matchedLocation == '/' || state.matchedLocation == '/sign-in-screen';

      if (loggedInUser != null) {
        return loggingIn ? '/home-screen' : null;
      } else {
        return loggingIn ? null : '/sign-in-screen';
      }
    },
  );
});
