

import 'package:flutter/material.dart';
import 'package:flutter_widgets/1_routes/page_one.dart';
import 'package:flutter_widgets/2_snackbar/snaackbar.dart';
import 'package:flutter_widgets/3_bottom_navigationbar/bottom_navigationbar.dart';
import 'package:flutter_widgets/4_drawer/my_drawer.dart';

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
        return MaterialPageRoute(builder: (context) => PageOne() );
      }
      case "page_two": {
        return MaterialPageRoute(builder: (context) => PageOne() );
      }
      case "page_three": {
        return MaterialPageRoute(builder: (context) => PageOne() );
      }
      case "page_snackbar": {
        return MaterialPageRoute(builder: (context) => MySnackBar() );
      }
      case "page_bottomNavigationBar": {
        return MaterialPageRoute(builder: (context) => MyBottomNavigationBar() );
      }
      case "my_drawer": {
        return MaterialPageRoute(builder: (context) => MyDrawer() );
      }
      default: {
        Scaffold();
      }
    }
  }
}



