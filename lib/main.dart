import 'package:flutter/material.dart';
import 'features/auth/presentation/pages/sign_in_page.dart';

void main() {
  runApp(const ShopSphere());
}

class ShopSphere extends StatelessWidget {
  const ShopSphere({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ShopSphere AI',
      home: const SignInPage(),
    );
  }
}