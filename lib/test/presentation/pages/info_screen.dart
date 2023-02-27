import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      padding: const EdgeInsets.symmetric(vertical: 56, horizontal: 26),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Parking Information",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(
            height: 56,
          ),
          const TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'Park ID'),
          ),
          const SizedBox(
            height: 24,
          ),
          const TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'Park Information'),
          ),
          const SizedBox(
            height: 24,
          ),
          const TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'Price'),
          ),
          const SizedBox(
            height: 56,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white),
                  child: const Text(
                    "Add",
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white),
                  child: const Text(
                    "Update",
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white),
                  child: const Text(
                    "Delete",
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
