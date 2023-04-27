import 'package:burger_blast/itemdetail.dart';
import 'package:flutter/material.dart';

class ViewMenu extends StatelessWidget {
  const ViewMenu({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MENU',
          style: TextStyle(
              color: Color.fromARGB(255, 247, 213, 145),
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            onPressed: () {
              // TODO: Handle cart button click
            },
            icon: Icon(
              Icons.shopping_cart,
              color: Color.fromARGB(255, 247, 213, 145),
            ),
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 247, 213, 145),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'BURGERS',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(height: 10),
            buildMenuItem(
              context,
              'Classic Burger',
              '\$5.00',
              'assets/images/classic burger.jpeg',
              '100% beef patty, lettuce, tomato, onion, pickles, ketchup, mustard, and mayo on a sesame seed bun.',
            ),
            buildMenuItem(
              context,
              'Cheeseburger',
              '\$5.40',
              'assets/images/cheeseburger.webp',
              '100% beef patty, American cheese, lettuce, tomato, onion, pickles, ketchup, mustard, and mayo on a sesame seed bun.',
            ),
            buildMenuItem(
              context,
              'Bacon Cheeseburger',
              '\$6.00',
              'assets/images/bacon cheeseburger.jpeg',
              '100% beef patty, crispy bacon, American cheese, lettuce, tomato, onion, pickles, ketchup, mustard, and mayo on a sesame seed bun.',
            ),
            buildMenuItem(
              context,
              'Veggie Burger',
              '\$5.50',
              'assets/images/veggie burger.jpeg',
              'Vegetarian patty, lettuce, tomato, onion, pickles, ketchup, mustard, and mayo on a sesame seed bun.',
            ),
            buildMenuItem(
              context,
              'Chicken Burger',
              '\$5.00',
              'assets/images/chicken burger.jpeg',
              'Breaded chicken patty, lettuce, tomato, onion, pickles, ketchup, mustard, and mayo on a sesame seed bun.',
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'SIDES',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(height: 10),
            buildMenuItem(
              context,
              'French Fries',
              '\$4.10',
              'assets/images/french fries.jpeg',
              'Crispy, golden fries seasoned with salt.',
            ),
            buildMenuItem(
              context,
              'Onion Rings',
              '\$3.60',
              'assets/images/onion rings.jpeg',
              'Battered and fried onion rings served with a side of ketchup.',
            ),
            buildMenuItem(
              context,
              'Mozzarella Sticks',
              '\$4.00',
              'assets/images/mozzarella sticks.jpeg',
              'Fried mozzarella sticks served with a side of marinara sauce.',
            ),
            buildMenuItem(
              context,
              'Sweet Potato Fries',
              '\$4.60',
              'assets/images/Sweet-Potato-Fries.jpeg',
              'Crispy, sweet potato fries seasoned with salt.',
            ),
            buildMenuItem(
              context,
              'Side Salad',
              '\$3.50',
              'assets/images/side salad.jpeg',
              'Fresh mixed greens, tomato, and cucumber with your choice of dressing.',
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'DRINKS',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(height: 10),
            buildMenuItem(
              context,
              'Pepsi',
              '\$1.20',
              'assets/images/pepsii.png',
              '',
            ),
            buildMenuItem(
              context,
              'Diet Pepsi',
              '\$1.20',
              'assets/images/dietpepsi.png',
              '',
            ),
            buildMenuItem(
              context,
              'Seven Up',
              '\$1.20',
              'assets/images/7up.png',
              '',
            ),
            buildMenuItem(
              context,
              'Diet Seven Up',
              '\$1.20',
              'assets/images/diet7up.png',
              '',
            ),
            buildMenuItem(
              context,
              'Mirinda',
              '\$1.20',
              'assets/images/mirinda.png',
              '',
            ),
            buildMenuItem(
              context,
              'Ice Tea',
              '\$1.30',
              'assets/images/icetea.png',
              '',
            ),
            buildMenuItem(
              context,
              'Water',
              '\$0.50',
              'assets/images/water.png',
              '',
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(BuildContext context, String title, String price,
      String imagePath, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: InkWell(
        onTap: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      itemdetail.custom(imagePath, title, price, description)));
        },
        onTapCancel: () {
          Navigator.pushNamed(context, '/view_menu');
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              height: 80,
              width: 80,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                  Text(price,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Color.fromARGB(255, 247, 213, 145),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: EdgeInsets.all(16),
                    ),
                    onPressed: () {
                      //Navigator.pushNamed(context, '/view_menu');
                    },
                    child: const Text(
                      "Add",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
