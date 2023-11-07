

import 'package:flutter/material.dart';
import 'package:flutter_widgets/1_routes/page_one.dart';
import 'package:flutter_widgets/2_snackbar/snaackbar.dart';
import 'package:flutter_widgets/3_bottom_navigationbar/bottom_navigationbar.dart';
import 'package:flutter_widgets/4_drawer/my_drawer.dart';
import 'package:flutter_widgets/5_tabbar/my_tabbar.dart';
import 'package:flutter_widgets/6_popupmenu/popupmenu.dart';
import 'package:flutter_widgets/7_radiobutton/radiobuttton.dart';
import 'package:flutter_widgets/8_checkbok/checkbok.dart';
import 'package:flutter_widgets/9_switchbutton/switchbutton.dart';

import 'homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlutterWidgets',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
      // initialRoute: "/",
      // routes: {
      //   "/": (context) => MyHomePage(),
      //   "page_one": (context) => PageOne(),
      //   "page_two": (context) => PageTwo(),
      //   "page_three": (context) => PageThree(),
      // },
      onGenerateRoute: OnGenerateRoute.route,
    );
  }
}

class OnGenerateRoute {
  static Route<dynamic>? route(RouteSettings settings){
    switch (settings.name){
      case "page_one": {
        return MaterialPageRoute(builder: (context) => const PageOne() );
      }
      case "page_two": {
        return MaterialPageRoute(builder: (context) => const PageOne() );
      }
      case "page_three": {
        return MaterialPageRoute(builder: (context) => const PageOne() );
      }
      case "page_snackbar": {
        return MaterialPageRoute(builder: (context) => const MySnackBar() );
      }
      case "page_bottomNavigationBar": {
        return MaterialPageRoute(builder: (context) => const MyBottomNavigationBar() );
      }
      case "my_drawer": {
        return MaterialPageRoute(builder: (context) => const MyDrawer() );
      }
      case "my_tabbar": {
        return MaterialPageRoute(builder: (context) => const MyTabBarPage() );
      }
      case "popupmenu": {
        return MaterialPageRoute(builder: (context) => const PopUpMenuPage() );
      }
      case "radiobutton": {
        return MaterialPageRoute(builder: (context) => const RadioButtonPage() );
      }
      case "checkbox": {
        return MaterialPageRoute(builder: (context) => const CheckBoxPage() );
      }
      case "switchbutton": {
        return MaterialPageRoute(builder: (context) => const SwitchButtonPage() );
      }
      default: {
        Scaffold();
      }
    }
  }
}



