import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/presentation/pages/sign_up_page.dart';
import 'sign_up_page.dart';
class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 30,
            ),
            child: Column(
              children: [

                const SizedBox(height: 20),

                Image.asset(
                  'assets/img/logo.png',
                  width: 130,
                ),

                const SizedBox(height: 25),

                const Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontSize: 32,
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

                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    prefixIcon: const Icon(Icons.email_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: const Icon(Icons.lock_outline),
                    suffixIcon: const Icon(Icons.visibility_off),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgot Password?",
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey.shade300,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("OR"),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey.shade300,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.g_mobiledata),
                    label: const Text(
                      "Continue with Google",
                    ),
                  ),
                ),

                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> const
                        SignUpPage(),),);
                      },
                      child: const Text(
                        "Sign Up",
                      ),
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