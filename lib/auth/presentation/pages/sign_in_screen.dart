import 'package:flutter/material.dart';
import 'package:parker/admin/presentation/pages/main_screen.dart';

import 'signup_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Login",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 120, horizontal: 26),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Welcome to Milha!",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontSize: 28),
            ),
            const SizedBox(
              height: 56,
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Email'),
            ),
            const SizedBox(
              height: 24,
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Password'),
            ),
            const SizedBox(
              height: 56,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AdminMainScreen()));
              },
              style: TextButton.styleFrom(
                  backgroundColor: Colors.green, foregroundColor: Colors.white),
              child: Container(
                width: 220,
                height: 26,
                alignment: Alignment.center,
                child: const Text(
                  "SIGN IN",
                ),
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            Container(
              width: double.maxFinite,
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()));
                },
                child: const Text('sign up'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
