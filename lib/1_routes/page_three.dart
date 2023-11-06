import 'package:flutter/material.dart';
import 'package:flutter_widgets/1_routes/page_two.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PageThree"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("Welcome to Page Three."),
            const SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,  MaterialPageRoute(builder: (context) => const PageTwo()));
                },
                child: const Text("Page Two")
            )
          ],
        ),
      ),
    );
  }
}
