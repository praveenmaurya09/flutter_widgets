import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Success"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 300,
              height: 300,
              decoration: const BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle
              ),
              child: const Center(
                child: Icon(Icons.done, color: Colors.white,size: 50,),
              ),
            ),
          )
        ],
      ),
    );
  }
}
