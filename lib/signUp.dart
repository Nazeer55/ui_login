// loginPage.dart
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign Up')),
      body: Center(child: Text('This is the Sign Up Page')),
    );
  }
}
