import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController nameController =
      TextEditingController();

  final TextEditingController emailController =
      TextEditingController();

  final TextEditingController passwordController =
      TextEditingController();

  final TextEditingController confirmPasswordController =
      TextEditingController();
  final _formKey =
  GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Account"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Form(
          key: _formKey,
          child: Column(
           children: [
            TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
                hintText: "Full Name",
                prefixIcon: Icon(Icons.person),
              ),
              validator: (value) {
                  if (value == null || value.isEmpty) {
                    // Si le texte saisi est nul ou vide
                    // On retourne le message d'erreur qui s'affichera en rouge sous le champ
                    return 'please enter your full name';
                  }
                  // Si tout est bon, on retourne null (aucune erreur)
                  return null;
                },
            ),

            const SizedBox(height: 15),

            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                hintText: "Email",
                prefixIcon: Icon(Icons.email),
              ),
              validator: (value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your email';
  }

  if (!value.contains('@')) {
    return 'Invalid email';
  }

  return null;
},
            ),

            const SizedBox(height: 15),

            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "Password",
                prefixIcon: Icon(Icons.lock),
              ),
              validator: (value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your password';
  }

  if (value.length < 6) {
    return 'Password must be at least 6 characters';
  }

  return null;
},
            ),

            const SizedBox(height: 15),

            TextFormField(
              controller: confirmPasswordController,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "Confirm Password",
                prefixIcon: Icon(Icons.lock_outline),
              ),
              validator: (value) {
  if (value == null || value.isEmpty) {
    return 'Confirm your password';
  }

  if (value != passwordController.text) {
    return 'Passwords do not match';
  }

  return null;
},
            ),

            const SizedBox(height: 25),

            
                  
                 
                SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                onPressed: () async {
  if (_formKey.currentState!.validate()) {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      print("Account Created");
    } catch (e) {
      print("ERROR: $e");
      print("stackTrace");
    }
  }


                },
    child: const Text("Create Account"),
  ),),
                

const SizedBox(height: 15),

Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    const Text("Already have an account?"),
    TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: const Text("Sign In"),
    ),
  ],
   ),
    ]          ),
    ),
     
    ),  
    );
     

         
    
  }
}