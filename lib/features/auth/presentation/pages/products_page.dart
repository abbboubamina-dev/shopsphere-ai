import 'package:flutter/material.dart';
import 'cart_page.dart';

class ProductDetailsPage extends StatelessWidget {
  final String title;
  final String price;
  final String img;
  final String description;

  const ProductDetailsPage({
    super.key,
    required this.title,
    required this.price,
    required this.img,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.deepPurple,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            Image.asset(
              img,
              height: 300,
              width: double.infinity,
              fit: BoxFit.contain,
            ),

            Padding(
              padding: const EdgeInsets.all(20),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    price,
                    style: const TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),

Row(
  children: const [
    Icon(Icons.star, color: Colors.amber),
    Icon(Icons.star, color: Colors.amber),
    Icon(Icons.star, color: Colors.amber),
    Icon(Icons.star, color: Colors.amber),
    Icon(Icons.star_half, color: Colors.amber),
    SizedBox(width: 5),
    Text("4.9"),
  ],
),

                  const SizedBox(height: 20),

                  const Text(
                    "Product Description",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    description,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),

                  SizedBox(height: 30),

                  SizedBox(
  width: double.infinity,
  height: 55,
  child: ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.deepPurple,
    ),
    onPressed: () {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Added To Cart"),
        ),
      );

      Navigator.push(
  context,
  MaterialPageRoute(
    builder: (_) => CartPage(
      title: title,
      price: price,
      img: img,
    ),
  ),
);
    },
    child: const Text(
      "Add To Cart",
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
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