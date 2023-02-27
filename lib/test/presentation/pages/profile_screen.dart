import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      padding: const EdgeInsets.symmetric(vertical: 56, horizontal: 26),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: 140,
            height: 140,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/78211839?s=400&u=f1aa8525663d0b08aabbbcb43ed2d2a20936ff40&v=4'),
            ),
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
            height: 24,
          ),
          const TextField(
            decoration: InputDecoration(
                prefixText: '+249 ',
                border: OutlineInputBorder(),
                labelText: 'Phone Number'),
          ),
          const SizedBox(
            height: 56,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white),
                child: Container(
                  width: 160,
                  height: 26,
                  alignment: Alignment.center,
                  child: const Text(
                    "Save",
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white),
                child: Container(
                  width: 160,
                  height: 26,
                  alignment: Alignment.center,
                  child: const Text(
                    "cancel",
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
