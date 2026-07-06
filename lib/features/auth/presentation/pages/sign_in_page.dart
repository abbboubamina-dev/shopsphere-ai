import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Image.asset(
                  'assets/img/logo.png',
                  width: 130,
                ),

                const SizedBox(height: 25),

                const Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "Sign in to continue",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 35),

TextField(
  keyboardType: TextInputType.emailAddress,
  decoration: InputDecoration(
    hintText: "Email",
    prefixIcon: const Icon(Icons.email_outlined),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  ),
),
const SizedBox(height: 20),
TextField(
  obscureText: true,
  decoration: InputDecoration(
    hintText: "Password",
    prefixIcon: const Icon(Icons.lock_outline),
    suffixIcon: const Icon(Icons.visibility_off),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  ),
),
const SizedBox(height: 15),
Align(
  alignment: Alignment.centerRight,
  child: TextButton(
    onPressed: () {},
    child: const Text("Forgot Password?"),
  ),
),
const SizedBox(height: 20),

SizedBox(
  width: double.infinity,
  height: 55,
  child: ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
    child: const Text(
      "Sign In",
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
),
const SizedBox(height: 25),
SizedBox(
  width: double.infinity,
  height: 55,
  child: OutlinedButton.icon(
    onPressed: () {},
    icon: const Icon(Icons.g_mobiledata, size: 30),
    label: const Text(
      "Continue with Google",
      style: TextStyle(fontSize: 16),
    ),
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
  ),
),
const SizedBox(height: 20),

Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    const Text("Don't have an account?"),
    TextButton(
      onPressed: () {},
      child: const Text("Sign Up"),
    ),
  ],
),



              ],
            ),
          ),
        ),
      ),
    );
  }
}