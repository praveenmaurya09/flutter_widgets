import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        centerTitle: true,
        title: const Text("HomePage"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, "page_two");
                },
                child: const Text("Navigate"),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, "page_snackbar");
                },
                child: const Text("SnackBar"),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, "page_bottomNavigationBar");
                },
                child: const Text("BottomNavigationBar"),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, "my_drawer");
                },
                child: const Text("My Drawer"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}