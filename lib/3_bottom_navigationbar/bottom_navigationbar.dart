import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key, });

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom NavigationBar"),
      ),
      body: _switchOnSelectedIndex(),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 2,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
          selectedIconTheme: const IconThemeData(color: Colors.black87),
          unselectedIconTheme: const IconThemeData(color: Colors.black54),
          onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
          },
          currentIndex: _currentIndex,
          items : const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: "Home"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.home_repair_service), label: "Services"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.location_on), label: "Location"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded), label: "Profile"
            ),
          ]

      ),



    );
  }

  _switchOnSelectedIndex (){
     switch (_currentIndex) {
       case 0: {
         return const Center(child: Text("Home Page",style: TextStyle(
           fontSize: 30,
           fontWeight: FontWeight.w700,

         ),),);
       }
       case 1: {
         return const Center(child: Text("Services Page", style: TextStyle(
     fontSize: 30,
     fontWeight: FontWeight.w700,

     ),),);
       }
       case 2: {
         return const Center(child: Text("Location Page",style: TextStyle(
     fontSize: 30,
     fontWeight: FontWeight.w700,

     ),),);
       }
       case 3: {
         return const Center(child: Text("Profile Page",style: TextStyle(
     fontSize: 30,
     fontWeight: FontWeight.w700,

     ),),);
       }
     }
  }



}
