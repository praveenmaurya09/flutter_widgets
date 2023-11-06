import 'package:flutter/material.dart';
import 'package:flutter_widgets/4_drawer/pages/favorites_page.dart';
import 'package:flutter_widgets/4_drawer/pages/notifications_page.dart';
import 'package:flutter_widgets/4_drawer/pages/privacy_policy_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: 350,
        child: Container(
          color: Colors.blue[400],
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: ListView(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    width: 80,
                    height: 80,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset("assets/img/praveenmaurya-circle.png", fit: BoxFit.cover,)),

                  ),
                  const SizedBox(width: 15,),
                  const Text("Praveen Maurya",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                    ),
                  )

                ],
              ),
              const Divider(color: Colors.white,),
              _listItem(icon: Icons.security_rounded, title: "Privacy Policy", onTap: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (_) => PrivacyPolicyPage())
                );
              } ),
              _listItem(icon: Icons.favorite_outline, title: "Favorites", onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => FavoritesPage())
                );
              } ),
              _listItem(icon: Icons.notifications_none, title: "Notifications", onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => NotificationsPage())
                );
              } ),
              const Divider(color: Colors.white,),
              _listItem(icon: Icons.help, title: "Help", onTap: () {} ),
              _listItem(icon: Icons.report, title: "Report", onTap: () {} ),

            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text("My Drawer"),
      ),
      body: const Center(),
    );
  }
}

 _listItem ({
  required IconData icon,
  required String title,
   required VoidCallback onTap
}) {
  return ListTile(
    onTap: onTap,
    iconColor: Colors.white,
    textColor: Colors.white,
    leading: Icon(icon, size: 30, color: Colors.white,),
    title: Text(title,style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
  );
}