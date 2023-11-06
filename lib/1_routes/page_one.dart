import 'package:flutter/material.dart';
import 'package:flutter_widgets/1_routes/page_three.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      // leading: GestureDetector(
      //     onTap: ()=> Navigator.pop(context),
      //     child: const Icon(Icons.ac_unit)),
      title: const Text("PageOne"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("Welcome to Page Three."),
            const SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,  MaterialPageRoute(builder: (context) => const PageThree()));
                },
                child: const Text("Page Three")
            )
          ],
        ),
      ),
    );
  }
}
