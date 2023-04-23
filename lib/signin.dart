import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
    );
  }
}
