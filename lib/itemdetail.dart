import 'package:flutter/material.dart';
import 'package:burger_blast/menu.dart';

class itemdetail extends StatelessWidget {
  const itemdetail({Key? key}) : super(key: key);

  static String img = '';
  static String item_name = '';
  static String item_price = '';
  static String description = '';

  itemdetail.custom(
      String imgpath, String name, String price, String description) {
    img = imgpath;
    item_name = name;
    item_price = price;
    description = description;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: GestureDetector(
            child: Icon(Icons.arrow_back, color: Colors.black),
            onTap: () {
              Navigator.popAndPushNamed(context, '/view_menu');
            }),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image.asset(img, height: 200.0),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item_name,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    item_price.toString(),
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
                child: Column(
              children: [
                Text("Description of item:",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                Text(
                  description,
                  style: TextStyle(fontSize: 14.0),
                )
              ],
            )),
            Container(
                child: Column(
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    SizedBox(width: 5),
                    Text("Ketchup"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    SizedBox(width: 5),
                    Text("Mayo"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    SizedBox(width: 5),
                    Text("Lettuce"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    SizedBox(width: 5),
                    Text("Pickles"),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "Fries",
                  style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    SizedBox(width: 5),
                    Text("Large"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    SizedBox(width: 5),
                    Text("Small"),
                  ],
                ),
              ],
            )),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Color.fromARGB(255, 247, 213, 145),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: EdgeInsets.all(10),
                    ),
                    child: Text(
                      "Add to cart",
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Color.fromARGB(255, 247, 213, 145),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: EdgeInsets.all(10),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/view_menu');
                    },
                    child: Text("Cancel"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
