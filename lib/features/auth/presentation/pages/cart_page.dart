import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  final String title;
  final String price;
  final String img;

  const CartPage({
    super.key,
    required this.title,
    required this.price,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart"),
        backgroundColor: Colors.deepPurple,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [

            Card(
              child: ListTile(
                leading: Image.asset(
                  img,
                  width: 50,
                  height: 50,
                ),

                title: Text(title),

                subtitle: Text(price),
              ),
            ),

            const Spacer(),

            Container(
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(15),
              ),

              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,

                children: [

                  Text(
                    "Total: $price",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () {},

                    child: const Text("Checkout"),
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