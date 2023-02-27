import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parker/admin/presentation/pages/main_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "SIGN UP",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 26),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextField(
                decoration: InputDecoration(
                  prefix: Icon(CupertinoIcons.person),
                  border: OutlineInputBorder(),
                  labelText: 'First Name',
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const TextField(
                decoration: InputDecoration(
                  prefix: Icon(CupertinoIcons.person),
                  border: OutlineInputBorder(),
                  labelText: 'Last Name',
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const TextField(
                decoration: InputDecoration(
                    prefix: Icon(CupertinoIcons.mail),
                    border: OutlineInputBorder(),
                    labelText: 'Email'),
              ),
              const SizedBox(
                height: 24,
              ),
              const TextField(
                decoration: InputDecoration(
                    prefix: Icon(CupertinoIcons.phone),
                    border: OutlineInputBorder(),
                    labelText: 'Phone Number'),
              ),
              const SizedBox(
                height: 24,
              ),
              const TextField(
                decoration: InputDecoration(
                    prefix: Icon(CupertinoIcons.car_detailed),
                    border: OutlineInputBorder(),
                    labelText: 'Car Plate'),
              ),
              const SizedBox(
                height: 24,
              ),
              const TextField(
                decoration: InputDecoration(
                    prefix: Icon(CupertinoIcons.car_detailed),
                    border: OutlineInputBorder(),
                    labelText: 'Vehicle Type'),
              ),
              const SizedBox(
                height: 24,
              ),
              const TextField(
                decoration: InputDecoration(
                    prefix: Icon(CupertinoIcons.lock),
                    border: OutlineInputBorder(),
                    labelText: 'Password'),
              ),
              const SizedBox(
                height: 24,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AdminMainScreen()));
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white),
                child: Container(
                  width: 220,
                  height: 26,
                  alignment: Alignment.center,
                  child: const Text(
                    "SIGN UP",
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
