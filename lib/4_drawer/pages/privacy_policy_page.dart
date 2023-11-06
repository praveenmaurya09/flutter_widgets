import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Privacy Policy"),
      ),
      body: const Center(
        child: Text("Privacy Policy Page",
          style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
              color: Colors.black
          ),
        ),
      ),
    );
  }
}
