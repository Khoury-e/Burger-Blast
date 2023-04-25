import 'package:flutter/material.dart';

class ViewMenu extends StatelessWidget {
  const ViewMenu({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
        backgroundColor: Colors.red,
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
              'assets/images/classic burger.jpeg',
              '100% beef patty, lettuce, tomato, onion, pickles, ketchup, mustard, and mayo on a sesame seed bun.',
            ),
            buildMenuItem(
              context,
              'Cheeseburger',
              'assets/images/cheeseburger.webp',
              '100% beef patty, American cheese, lettuce, tomato, onion, pickles, ketchup, mustard, and mayo on a sesame seed bun.',
            ),
            buildMenuItem(
              context,
              'Bacon Cheeseburger',
              'assets/images/bacon cheeseburger.jpeg',
              '100% beef patty, crispy bacon, American cheese, lettuce, tomato, onion, pickles, ketchup, mustard, and mayo on a sesame seed bun.',
            ),
            buildMenuItem(
              context,
              'Veggie Burger',
              'assets/images/veggie burger.jpeg',
              'Vegetarian patty, lettuce, tomato, onion, pickles, ketchup, mustard, and mayo on a sesame seed bun.',
            ),
            buildMenuItem(
              context,
              'Chicken Burger',
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
              'assets/images/french fries.jpeg',
              'Crispy, golden fries seasoned with salt.',
            ),
            buildMenuItem(
              context,
              'Onion Rings',
              'assets/images/onion rings.jpeg',
              'Battered and fried onion rings served with a side of ketchup.',
            ),
            buildMenuItem(
              context,
              'Mozzarella Sticks',
              'assets/images/mozzarella sticks.jpeg',
              'Fried mozzarella sticks served with a side of marinara sauce.',
            ),
            buildMenuItem(
              context,
              'Sweet Potato Fries',
              'assets/images/Sweet-Potato-Fries.jpeg',
              'Crispy, sweet potato fries seasoned with salt.',
            ),
            buildMenuItem(
              context,
              'Side Salad',
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
              'assets/images/pepsii.png',
              '',
            ),
            buildMenuItem(
              context,
              'Diet Pepsi',
              'assets/images/dietpepsi.png',
              '',
            ),
            buildMenuItem(
              context,
              'Seven Up',
              'assets/images/7up.png',
              '',
            ),
            buildMenuItem(
              context,
              'Diet Seven Up',
              'assets/images/diet7up.png',
              '',
            ),
            buildMenuItem(
              context,
              'Mirinda',
              'assets/images/mirinda.png',
              '',
            ),
            buildMenuItem(
              context,
              'Ice Tea',
              'assets/images/icetea.png',
              '',
            ),


          ],
        ),
      ),
     );
  




  }
  Widget buildMenuItem(BuildContext context, String title, String imagePath, String description) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    child: InkWell(
      onTap: () {
        // TODO: Handle menu item click
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
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

}
