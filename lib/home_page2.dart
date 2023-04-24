import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      backgroundColor: const Color.fromARGB(255, 247, 213, 145),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.all(10.0),
                child: Image.asset('assets/icons/logo_transparent.png')),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/view_menu');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.black,
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                side: BorderSide(color: Colors.black, width: 2),
              ),
              child: Container(
                width: 200,
                margin: const EdgeInsets.all(16.0),
                alignment: Alignment.center,
                child: const Text(
                  "View Menu",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/view_menu');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.black,
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                side: BorderSide(color: Colors.black, width: 2),
              ),
              child: Container(
                width: 200,
                margin: const EdgeInsets.all(16.0),
                alignment: Alignment.center,
                child: const Text(
                  "Special Offers",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/view_menu');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.black,
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                side: BorderSide(color: Colors.black, width: 2),
              ),
              child: Container(
                width: 200,
                margin: const EdgeInsets.all(16.0),
                alignment: Alignment.center,
                child: const Text(
                  "SIgn In/Sign Up",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "All rights reserved Burger Blast",
              style: TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
