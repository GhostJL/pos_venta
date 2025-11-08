import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static String name = 'login-screen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Login'),
      ),
    );
  }
}
