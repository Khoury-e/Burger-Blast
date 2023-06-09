import 'package:burger_blast/itemdetail.dart';
import 'package:burger_blast/menu.dart';
import 'package:burger_blast/signin.dart';
import 'package:flutter/material.dart';
import 'package:burger_blast/sign_up.dart';
import 'package:burger_blast/home_page2.dart';
import 'package:burger_blast/home_page1.dart';
import 'package:burger_blast/special.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Burger Blast',
      initialRoute: '/home_1',
      routes: <String, WidgetBuilder>{
        '/home_1': (BuildContext context) =>
            const HomePage1(title: "Home Page 1"),
        '/home_2': (BuildContext context) =>
            const HomePage2(title: "Home Page 2"),
        '/view_menu': (BuildContext context) =>
            const ViewMenu(title: "View Menu"),
        '/signup': (BuildContext context) =>
            const SignUp(title: "Sign Up Page"),
        '/signin': (BuildContext context) =>
            const SignIn(title: "Sign In Page"),
        '/special': (BuildContext context) =>
            const SpecialOffers(title: "Special Offers"),
        '/itemdetail': (BuildContext context) => const itemdetail(),
      },
    );
  }
}
