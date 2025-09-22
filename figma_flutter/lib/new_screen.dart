import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login up")),
      body: const Center(
        child: Text(
          "Login up",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
