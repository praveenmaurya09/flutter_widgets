import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorites"),
      ),
      body: const Center(
        child: Text("Favorites Page",
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
