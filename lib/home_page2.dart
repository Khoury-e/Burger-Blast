import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text(title)),
      backgroundColor: const Color.fromARGB(255, 247, 213, 145),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
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
                foregroundColor: Color.fromARGB(255, 247, 213, 145),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.all(16),
                //padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                //side: BorderSide(color: Colors.black, width: 2),
              ),
              child: Container(
                width: 200,
                margin: const EdgeInsets.all(16.0),
                alignment: Alignment.center,
                child: const Text(
                  "View Menu",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/view_menu'); replace with navigation to special offer page
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Color.fromARGB(255, 247, 213, 145),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.all(16),
                //padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                //side: BorderSide(color: Colors.black, width: 2),
              ),
              child: Container(
                width: 200,
                margin: const EdgeInsets.all(16.0),
                alignment: Alignment.center,
                child: const Text(
                  "Special Offers",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Color.fromARGB(255, 247, 213, 145),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.all(16),
                //padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                //side: BorderSide(color: Colors.black, width: 2),
              ),
              child: Container(
                width: 200,
                margin: const EdgeInsets.all(16.0),
                alignment: Alignment.center,
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signin');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Color.fromARGB(255, 247, 213, 145),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.all(16),
                //padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                //side: BorderSide(color: Colors.black, width: 2),
              ),
              child: Container(
                width: 200,
                margin: const EdgeInsets.all(16.0),
                alignment: Alignment.center,
                child: const Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "All rights reserved to Burger Blast",
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
