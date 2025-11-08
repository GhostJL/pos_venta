import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_venta/presentation/providers/providers.dart';
import 'package:flutter/material.dart';

class SignInForm extends ConsumerStatefulWidget {
  const SignInForm({super.key});

  @override
  ConsumerState<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends ConsumerState<SignInForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final signInState = ref.watch(signInProvider);

    ref.listen(signInProvider, (previous, next) {
      if (next.errorMessage.isNotEmpty) {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(SnackBar(content: Text(next.errorMessage)));
      }
    });

    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            onChanged: (value) =>
                ref.read(signInProvider.notifier).onEmailChanged(value),
            decoration: const InputDecoration(
              labelText: 'Email or Username',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email or username';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          TextFormField(
            onChanged: (value) =>
                ref.read(signInProvider.notifier).onPasswordChanged(value),
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Checkbox(
                value: signInState.rememberMe,
                onChanged: (value) {
                  ref.read(signInProvider.notifier).onRememberMeChanged(value!);
                },
              ),
              const Text('Remember me'),
            ],
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: signInState.isLoading
                ? null
                : () {
                    if (_formKey.currentState!.validate()) {
                      ref.read(signInProvider.notifier).signIn();
                    }
                  },
            child: signInState.isLoading
                ? const CircularProgressIndicator()
                : const Text('Sign In'),
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {
              // TODO: Navigate to Sign Up screen
            },
            child: const Text('Don\'t have an account? Sign Up'),
          ),
        ],
      ),
    );
  }
}
