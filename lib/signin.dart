import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SIGN IN', style: TextStyle(color:  Color.fromARGB(255, 247, 213, 145),  fontSize: 24,
                  fontWeight: FontWeight.bold),),
        backgroundColor: Colors.red,

      ),
      backgroundColor: Color.fromARGB(255, 247, 213, 145),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top:10),
            child: Image.asset('assets/icons/logo_transparent.png'),
            height: 150,
            width: 400,
          ), 
          Container(
              margin: const EdgeInsets.all(10.0),
              child: const Text(
                "Welcome Back to Burger Blast!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              )),
          Container(
              margin: const EdgeInsets.all(10.0),
              child: const SizedBox(
                height: 40.0,
                width: 300.0,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                    hintText: "Enter your email",
                  ),
                ),
              )),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: const SizedBox(
              width: 300.0,
              height: 40.0,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  hintText: "Enter your password",
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor:Color.fromARGB(255, 247, 213, 145),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.all(16),
                //side: const BorderSide(color: Colors.black, width: 1),
                //padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/view_menu');
              },
              child: const Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          /*Container(
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
          )*/
        ],
      ),
      )
    );
  }
}
