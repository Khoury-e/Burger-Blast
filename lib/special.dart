import 'package:flutter/material.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SPECIAL OFFERS', style: TextStyle(color:  Color.fromARGB(255, 247, 213, 145),  fontSize: 24,
                  fontWeight: FontWeight.bold)), backgroundColor: Colors.red,
                   actions: [
                    IconButton(
                      onPressed: () {
                        // TODO: Handle cart button click
                      },
                      icon: Icon(Icons.shopping_cart, color:  Color.fromARGB(255, 247, 213, 145),),
                    ),
                  ],
      ),
      backgroundColor: Color.fromARGB(255, 247, 213, 145),
     
      
      
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 10),
            _buildSpecialItem(
            context,
            'Combo Meal',
            'Classic Burger or Chicken Burger with Fries and Drink',
            '\$8.50 (regularly \$9.20)',
            'assets/images/combo.jpeg',
          ),
          _buildSpecialItem(
            context,
            'Cheese Lover\'s Deal',
            'Cheeseburger, Mozzarella Sticks, and Drink',
            '\$9.50 (regularly \$10.90)',
            'assets/images/cheeseburgermeal.jpeg',
          ),
          _buildSpecialItem(
            context,
            'Family Pack',
            '2 Classic Burgers, 2 Sweet Potato Fries, 4 Drinks, and Side Salad',
            '\$25.00 (regularly \$28.70)',
            'assets/images/familypack.jpeg',
          ),
          _buildSpecialItem(
            context,
            'Bacon Mania',
            'Bacon Cheeseburger, Onion Rings, and Milkshake',
            '\$10.00 (regularly \$11.90)',
            'assets/images/baconmania.jpeg',
          ),
          ]
        )
      )
    );
  }

  Widget _buildSpecialItem(BuildContext context, String title, String subtitle, String price, String imagePath) {
    return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            height: 150,
            width: 150,
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
                  subtitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                  ),
                ),
                
               
                  Text(price),
                  SizedBox(height: 8),
                  ElevatedButton(
                    //onPressed: () {},
                    //child: Text('Add'),
                    style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor:Color.fromARGB(255, 247, 213, 145),
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
   
    );
  }
}
