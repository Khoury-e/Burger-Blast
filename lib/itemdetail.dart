import 'package:flutter/material.dart';
import 'package:burger_blast/menu.dart';

class itemdetail extends StatelessWidget {
  const itemdetail({Key? key}) : super(key: key);
  static String img = '';
  static String item_name = '';
  static String item_price = '';
  static String description = '';

  itemdetail.custom(
      String imgpath, String name, String price, String description, ) {
    img = imgpath;
    item_name = name;
    item_price = price;
    description = description;
  }

  @override
  Widget build(BuildContext context) {
    final ketchupChecked = ValueNotifier<bool>(true);
    final lettuceChecked = ValueNotifier<bool>(true);
    final mayoChecked = ValueNotifier<bool>(true);
    final picklesChecked = ValueNotifier<bool>(true);
    final tomatoChecked = ValueNotifier<bool>(true);
    final largeChecked = ValueNotifier<bool>(true);
    final regularChecked = ValueNotifier<bool>(true);
    final largeChecked1 = ValueNotifier<bool>(true);
    final regularChecked1 = ValueNotifier<bool>(true);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: GestureDetector(
            child: Icon(Icons.arrow_back, color:  Color.fromARGB(255, 247, 213, 145),),
            onTap: () {
              Navigator.popAndPushNamed(context, '/view_menu');
            }),
      ),
      backgroundColor: Color.fromARGB(255, 247, 213, 145),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image.asset(img, height: 300,
              width: 500,
              fit: BoxFit.cover,
              /*height: 200.0, width: 200*/),
            ),
            SizedBox(height: 20),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item_name,
                    style: TextStyle(
            
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    item_price.toString(),
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
                child: Column(
              children: [
                Text("Customize your order",
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.red, decoration: TextDecoration.underline,)),
                Text(
                  description,
                  style: TextStyle(fontSize: 14.0),
                )
              ],
            )),
            SizedBox(height: 10),
            Container(
                child: Column(
              children: [
                Row(
                  children: [
                    /*Checkbox(value: true, onChanged: (value){}),
                    SizedBox(width: 5),
                    Text("Ketchup", style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal, color: Colors.black, ),) */
                     ValueListenableBuilder<bool>(
                        valueListenable: ketchupChecked,
                        builder: (BuildContext context, bool value, Widget? child) {
                          return Checkbox(
                            value: value,
                            onChanged: (bool? newValue) {
                              ketchupChecked.value = newValue!;
                            },
                          );
                        },
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Ketchup",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                  ],
                ),
                Row(
                  children: [
                    /*Checkbox(value: true, onChanged: (value) {}),
                    SizedBox(width: 5),
                    Text("Mayo", style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal, color: Colors.black,),), */
                        ValueListenableBuilder<bool>(
                        valueListenable: mayoChecked,
                        builder: (BuildContext context, bool value, Widget? child) {
                          return Checkbox(
                            value: value,
                            onChanged: (bool? newValue) {
                              mayoChecked.value = newValue!;
                            },
                          );
                        },
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Mayo",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                  ],
                ),
                Row(
                  children: [
                    /*Checkbox(value: true, onChanged: (value) {}),
                    SizedBox(width: 5),
                    Text("Lettuce", style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal, color: Colors.black,),), */
                        ValueListenableBuilder<bool>(
                        valueListenable: lettuceChecked,
                        builder: (BuildContext context, bool value, Widget? child) {
                          return Checkbox(
                            value: value,
                            onChanged: (bool? newValue) {
                              lettuceChecked.value = newValue!;
                            },
                          );
                        },
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Lettuce",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                  ],
                ),
                Row(
                  children: [
                    /*Checkbox(value: true, onChanged: (value) {}),
                    SizedBox(width: 5),
                    Text("Mayo", style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal, color: Colors.black,),), */
                        ValueListenableBuilder<bool>(
                        valueListenable: tomatoChecked,
                        builder: (BuildContext context, bool value, Widget? child) {
                          return Checkbox(
                            value: value,
                            onChanged: (bool? newValue) {
                              tomatoChecked.value = newValue!;
                            },
                          );
                        },
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Tomato",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                  ],
                ),
                Row(
                  children: [
                    /*Checkbox(value: true, onChanged: (value) {}),
                    SizedBox(width: 5),
                    Text("Pickles", style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal, color: Colors.black,),), */
                        ValueListenableBuilder<bool>(
                        valueListenable: picklesChecked,
                        builder: (BuildContext context, bool value, Widget? child) {
                          return Checkbox(
                            value: value,
                            onChanged: (bool? newValue) {
                              picklesChecked.value = newValue!;
                            },
                          );
                        },
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Pickles",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Upgrade your meal",
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.red, decoration: TextDecoration.underline,),
                ),
                SizedBox(height: 20),
                Text(
                  "Fries",
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, decoration: TextDecoration.underline,),
                ),
                Row(
                  children: [
                    /*Checkbox(value: true, onChanged: (value) {}),
                    SizedBox(width: 5),
                    Text("Regular", style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal, color: Colors.black,),), */
                        ValueListenableBuilder<bool>(
                        valueListenable: regularChecked,
                        builder: (BuildContext context, bool value, Widget? child) {
                          return Checkbox(
                            value: value,
                            onChanged: (bool? newValue) {
                              regularChecked.value = newValue!;
                            },
                          );
                        },
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Regular",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                        
                  ],
                ),
                Row(
                  children: [
                    /*Checkbox(value: true, onChanged: (value) {}),
                    SizedBox(width: 5),
                    Text("Large", style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal, color: Colors.black,),),*/
                        ValueListenableBuilder<bool>(
                        valueListenable: largeChecked,
                        builder: (BuildContext context, bool value, Widget? child) {
                          return Checkbox(
                            value: value,
                            onChanged: (bool? newValue) {
                              largeChecked.value = newValue!;
                            },
                          );
                        },
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Large",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Drink",
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, decoration: TextDecoration.underline,),
                ),
                Row(
                  children: [
                    /*Checkbox(value: true, onChanged: (value) {}),
                    SizedBox(width: 5),
                    Text("Regular", style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal, color: Colors.black,),), */
                        ValueListenableBuilder<bool>(
                        valueListenable: regularChecked1,
                        builder: (BuildContext context, bool value, Widget? child) {
                          return Checkbox(
                            value: value,
                            onChanged: (bool? newValue) {
                              regularChecked1.value = newValue!;
                            },
                          );
                        },
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Regular",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                  ],
                ),
                Row(
                  children: [
                    /*Checkbox(value: true, onChanged: (value) {}),
                    SizedBox(width: 5),
                    Text("Large", style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal, color: Colors.black,),), */
                        ValueListenableBuilder<bool>(
                        valueListenable: largeChecked1,
                        builder: (BuildContext context, bool value, Widget? child) {
                          return Checkbox(
                            value: value,
                            onChanged: (bool? newValue) {
                              largeChecked1.value = newValue!;
                            },
                          );
                        },
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Large",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                  ],
                ),
              ],
            )),
            SizedBox(height: 20),
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
                  SizedBox(width: 10),
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
                  SizedBox(width: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
