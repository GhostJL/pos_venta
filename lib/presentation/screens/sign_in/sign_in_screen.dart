import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  static const name = '/sign-in-screen';
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign in')),
      body: Center(child: Text('Sign in body')),
    );
  }
}
