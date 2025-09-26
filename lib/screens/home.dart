import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          TextButton(
            //ไม่มีพื้นผิว
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            onPressed: () {
              print("Text Button ");
            },
            child: const Text(
              "Text ",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          FilledButton(
            //มีพื้นผิว มีสีพื้นหลัง
            style: FilledButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              print("Filled Button");
            },
            child: const Text(
              "Filled",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            //มีเส้นขอบ มีแค่เส้นขอบ
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Colors.red),
              foregroundColor: Colors.black,
            ),
            onPressed: () {
              print("Outlined Button ");
            },
            child: const Text(
              "Outlined",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            //ดูมีมิติ มีเงา
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              print("Eleveted Button");
            },
            child: const Text(
              "Eleveted",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

