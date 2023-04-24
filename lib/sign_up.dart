import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

/*install url_launcher flutter package before running this code.
  install it using terminal (by executing: flutter pub get url_launcher)
  add then the version onto the pubspec.yaml file (under dependencies)
  dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.2
  url_launcher: ^6.1.10 */

class SignUp extends StatelessWidget {
  const SignUp({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 213, 145),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(40.0),
            child: const Text(
              "Welcome to Burger Blast!!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: const SizedBox(
              height: 40.0,
              width: 300.0,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Enter your email',
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: const SizedBox(
              height: 40.0,
              width: 300.0,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter Password',
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: const SizedBox(
              height: 40.0,
              width: 300.0,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password',
                  hintText: 'Confirm Your Password',
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.black,
                side: const BorderSide(color: Colors.black, width: 1),
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/view_menu');
              },
              child: const Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Text("Or Sign Up Using"),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  child: Text("Facebook", style: TextStyle(color: Colors.blue)),
                  onTap: () => launchUrlString('https://www.facebook.com'),
                ),
                InkWell(
                  child: Text("LinkedIn", style: TextStyle(color: Colors.blue)),
                  onTap: () => launchUrlString('https://www.linkedin.com'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
