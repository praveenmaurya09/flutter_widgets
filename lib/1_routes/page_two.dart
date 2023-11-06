import 'package:flutter/material.dart';
import 'package:flutter_widgets/homePage.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PageTwo"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("Welcome to Page Two."),
            const SizedBox(height: 30,),
            GestureDetector(
              onTap:  () {
                Navigator.pushReplacement(context,  MaterialPageRoute(builder: (context) => const MyHomePage()));
              },
              child: Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.orangeAccent,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.ac_unit, size: 30,),
                    SizedBox(width: 20,),
                    Text("Back To Home Page")
                  ],
                )
              ),
            ),

          ],
        ),
      ),
    );
  }
}
