import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
      ),
      body: const Center(
        child: Text("Notifications Page",
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
