import 'package:flutter/material.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 213, 145),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // Display the image in a container
          Container(
            margin: EdgeInsets.all(20),
            child: Image.asset('assets/icons/logo_transparent.png'),
          ),

          // Add a button shaped like an arrow
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home_2');
            },
            child: Text(
              'tap to continue',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.all(18),
              primary: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
