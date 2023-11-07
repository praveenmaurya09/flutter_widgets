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
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            // crossAxisAlignment: CrossAxisAlignment.center,
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
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, "my_tabbar");
                },
                child: const Text("My TabBar"),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, "popupmenu");
                },
                child: const Text("PopUpMenu"),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, "radiobutton");
                },
                child: const Text("Radio Button"),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, "checkbox");
                },
                child: const Text("Check Box"),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, "switchbutton");
                },
                child: const Text("Switch Button"),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, "alertdialog");
                },
                child: const Text("Alert Dialog"),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, "card");
                },
                child: const Text("Flutter Card"),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, "dropdown");
                },
                child: const Text("DropDown"),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, "bottomsheet");
                },
                child: const Text("Bottom Sheet"),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, "formvalidation");
                },
                child: const Text("Form Validation"),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, "routes");
                },
                child: const Text("Button Text"),
              ),




            ],
          ),
        ),
      ),
    );
  }
}