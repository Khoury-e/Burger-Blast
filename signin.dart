import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              child: const Text(
                "Sign In With Burger Blast",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              )),
          Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                  hintText: "Enter your email",
                ),
              )),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            child: const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Password",
                hintText: "Enter your password",
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/view_menu');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: const Color.fromARGB(255, 247, 213, 145),
              ),
              child: const Text("Sign In"),
            ),
          )
        ],
      ),
    );
  }
}
