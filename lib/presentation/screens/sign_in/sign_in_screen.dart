
import 'package:flutter/material.dart';
import 'package:pos_venta/presentation/widgets/sign_in/sign_in_form.dart';

class SignInScreen extends StatelessWidget {
  static const name = '/sign-in-screen';
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome Back!',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 10),
                Text(
                  'Sign in to continue',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 40),
                const SignInForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
