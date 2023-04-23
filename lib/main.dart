import 'package:burger_blast/signin.dart';
import 'package:flutter/material.dart';
import 'package:burger_blast/Profile.dart';
import 'package:burger_blast/sign_up.dart';
import 'package:burger_blast/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Burger Blast',
      initialRoute: '/home',
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => const HomePage(title: "Home Page"),
        '/profile': (BuildContext context) => const Profile(
              title: "My Profile",
            ),
        '/signup': (BuildContext context) =>
            const SignUp(title: "Sign Up Page"),
        '/signin': (BuildContext context) =>
            const SignIn(title: "Sign In Page"),
      },
    );
  }
}
