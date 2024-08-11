import 'package:flutter/material.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: [
          // Product Image
          ClipOval(
            child: Image.asset(
              'images/1.png', // Replace with your image path
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 16.0),

          // Product Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nike Air Max 200',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4.0),
                Text(
                  '\$240.00',
                  style: TextStyle(fontSize: 16, color: Colors.indigo),
                ),
              ],
            ),
          ),

          // Quantity Controls
          Column(
            children: [
              IconButton(
                icon: Icon(Icons.remove, color: Colors.grey),
                onPressed: () {
                  // Decrease quantity logic
                },
              ),
              Text(
                '1',
                style: TextStyle(fontSize: 18),
              ),
              IconButton(
                icon: Icon(Icons.add, color: Colors.blue),
                onPressed: () {
                  // Increase quantity logic
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
