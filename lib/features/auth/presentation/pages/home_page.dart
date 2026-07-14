import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/category_card.dart';
import 'products_page.dart';
import'package:firebase_auth/firebase_auth.dart';
import 'sign_in_page.dart';
import 'package:flutter_application_1/widgets/product_card.dart';
import 'electronics_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color(0xffF8F9FD),

    appBar: AppBar(
      backgroundColor: Colors.deepPurple,
      elevation: 0,

      title: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome Back ",
            style: TextStyle(
              fontSize: 12,
              color: Colors.white70,
            ),
          ),
          Text(
            "ShopSphere AI",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),

      actions: [

        IconButton(
          icon: const Icon(
            Icons.notifications_none,
            color: Colors.white,
          ),
          onPressed: () {},
        ),

        IconButton(
          icon: const Icon(
            Icons.favorite_border,
            color: Colors.white,
          ),
          onPressed: () {},
        ),

        IconButton(
          icon: const Icon(
            Icons.logout,
            color: Colors.white,
          ),
          onPressed: () async {
            await FirebaseAuth.instance.signOut();

            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const SignInPage(),
              ),
            );
          },
        ),
      ],
    ),

    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(height: 10),

            // SEARCH BAR
            TextField(
              decoration: InputDecoration(
                hintText: "Search products...",
                prefixIcon: const Icon(Icons.search),

                filled: true,
                fillColor: Colors.white,

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // BANNER
            Container(
              height: 180,
              width: double.infinity,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),

                gradient: const LinearGradient(
                  colors: [
                    Color(0xff6A11CB),
                    Color(0xff2575FC),
                  ],
                ),
              ),

              child: Padding(
                padding: const EdgeInsets.all(20),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [

                    const Text(
                      "Summer Sale 🔥",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      "Up To 50% OFF",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 18,
                      ),
                    ),

                    const SizedBox(height: 15),

                    ElevatedButton(
                      onPressed: () {},

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,),

                      child: const Text(
                        "Shop Now",
                        style: TextStyle(
                          color: Colors.deepPurple,
                        ),
                      ),
                      
   
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25),

            const Text(
              "Categories",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),
            GridView.count(
  shrinkWrap: true,
  physics: const NeverScrollableScrollPhysics(),
  crossAxisCount: 2,
  crossAxisSpacing: 12,
  mainAxisSpacing: 12,
  childAspectRatio: 1.2,
  children: [

    CategoryCard(
      title: "Electronics",
      icon: Icons.phone_android,
      onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (_) => const ElectronicsPage(),
    ),
  );
},
    ),

    CategoryCard(
      title: "Fashion",
      icon: Icons.checkroom,
      onTap: () {},
    ),

    CategoryCard(
      title: "Shoes",
      icon: Icons.shopping_bag,
      onTap: () {},
    ),

    CategoryCard(
      title: "Books",
      icon: Icons.menu_book,
      onTap: () {},
    ),
  ],
),
          

            const SizedBox(height: 25),

            const Text(
              "Featured Products",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            

            SizedBox(
  height: 260,
  child: ListView(
    scrollDirection: Axis.horizontal,
    children: const [

      ProductCard(
        title: "iPhone 17 Pro",
        price: "\$999",
        img: "assets/img/images.png",
      ),

      ProductCard(
        title: "Nike Air Max",
        price: "\$120",
        img: "assets/img/images (1).png",
      ),

      ProductCard(
        title: "MacBook Air",
        price: "\$1299",
        img: "assets/img/img-MacBook.png",
      ),
    ],
  ),
),

            const SizedBox(height: 25),

            
            
          ],
        ),
      ),
    ),

    bottomNavigationBar: BottomNavigationBar(
      currentIndex: 0,

      selectedItemColor: Colors.deepPurple,

      type: BottomNavigationBarType.fixed,

      items: const [

        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag),
          label: "Products",
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "Favorites",
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Profile",
        ),
      ],
    ),
  );
}}
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
    return Container(
      width: 180,
      margin: const EdgeInsets.only(right: 15),
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
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
