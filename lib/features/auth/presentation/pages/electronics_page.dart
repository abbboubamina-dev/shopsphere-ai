import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/product_card.dart';

class ElectronicsPage extends StatelessWidget {
  const ElectronicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Electronics"),
        backgroundColor: Colors.deepPurple,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 1.1,

          children: [

            ProductCard(
              title: "iPhone 17 Pro",
              price: "\$999",
              img: "assets/img/images.png",
            ),

            ProductCard(
              title: "Wireless Headphones",
              price: "\$149",
              img: "assets/img/headphones.png",
            ),

            ProductCard(
              title: "MacBook Air",
              price: "\$1299",
              img: "assets/img/laptop.png",
            ),

            ProductCard(
              title: "Smart Watch",
              price: "\$299",
              img: "assets/img/smartwatch.png",
            ),
          ],
        ),
      ),
    );
  }
}