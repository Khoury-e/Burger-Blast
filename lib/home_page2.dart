import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Container(
        color: Colors.black,
      ),
    );
  }
}
