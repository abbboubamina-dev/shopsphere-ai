import 'package:flutter/material.dart';
import'package:flutter_application_1/features/auth/presentation/pages/products_page.dart';
class ProductCard extends StatelessWidget {
  final String title;
  final String price;
  final String img;

  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
  onTap: () {
    Navigator.push(
  context,
  MaterialPageRoute(
    builder: (_) => ProductDetailsPage(
      title: title,
      price: price,
      img: img,
      description: title == "iPhone 17 Pro"
          ? "Latest Apple smartphone with powerful camera and high performance."
          : title == "MacBook Air"
              ? "Lightweight laptop powered by Apple Silicon."
              : title == "Wireless Headphones"
                  ? "Premium wireless headphones with noise cancellation."
                  : "Smart watch for fitness tracking and notifications.",
    ),
  ),
);
      
    
  },

  child: Container(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [

             Expanded(
  child: ClipRRect(
    borderRadius: BorderRadius.circular(15),
    child: Image.asset(
      img,
      width: double.infinity,
      fit: BoxFit.cover,
    ),
  ),
),

              const SizedBox(height: 10),

              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 5),

              Text(
                price,
                style: const TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}