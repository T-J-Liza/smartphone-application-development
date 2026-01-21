import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text("About Us"),
        backgroundColor: Colors.grey[800],
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "We are a leading IT company dedicated to building modern, "
            "secure, and user‑friendly applications. Our mission is to "
            "empower businesses and individuals through technology.",
            style: TextStyle(color: Colors.white70, fontSize: 16, height: 1.5),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
