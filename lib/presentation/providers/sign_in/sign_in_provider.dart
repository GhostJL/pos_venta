import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_venta/presentation/providers/user/logged_in_user_provider.dart';
import 'package:pos_venta/presentation/providers/user/user_repository_provider.dart';

final signInProvider = StateNotifierProvider<SignInNotifier, SignInState>((ref) {
  final userRepository = ref.watch(userRepositoryProvider);
  return SignInNotifier(userRepository, ref);
});

class SignInNotifier extends StateNotifier<SignInState> {
  final userRepository;
  final Ref ref;

  SignInNotifier(this.userRepository, this.ref) : super(SignInState());

  void onEmailChanged(String email) {
    state = state.copyWith(email: email);
  }

  void onPasswordChanged(String password) {
    state = state.copyWith(password: password);
  }

  void onRememberMeChanged(bool rememberMe) {
    state = state.copyWith(rememberMe: rememberMe);
  }

  Future<void> signIn() async {
    state = state.copyWith(isLoading: true, errorMessage: '');
    try {
      final user = await userRepository.signIn(state.email, state.password);
      if (user != null) {
        ref.read(loggedInUserProvider.notifier).state = user;
        state = state.copyWith(isLoading: false);
      } else {
        state = state.copyWith(isLoading: false, errorMessage: 'Invalid email or password');
      }
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }
}

class SignInState {
  final String email;
  final String password;
  final bool rememberMe;
  final bool isLoading;
  final String errorMessage;

  SignInState({
    this.email = '',
    this.password = '',
    this.rememberMe = false,
    this.isLoading = false,
    this.errorMessage = '',
  });

  SignInState copyWith({
    String? email,
    String? password,
    bool? rememberMe,
    bool? isLoading,
    String? errorMessage,
  }) {
    return SignInState(
      email: email ?? this.email,
      password: password ?? this.password,
      rememberMe: rememberMe ?? this.rememberMe,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
