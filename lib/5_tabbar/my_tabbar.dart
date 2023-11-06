import 'package:flutter/material.dart';

import '../homePage.dart';

class MyTabBarPage extends StatefulWidget {
  const MyTabBarPage({super.key});

  @override
  State<MyTabBarPage> createState() => _MyTabBarPageState();
}

class _MyTabBarPageState extends State<MyTabBarPage> with TickerProviderStateMixin{
  
  late TabController _controller;
  
  @override
  void initState() {
    _controller = TabController(
        length: 3,
        vsync: this,
        initialIndex: 0
    );
    super.initState();
  }
  
  
  @override
  Widget build(BuildContext context) {
    return
      // DefaultTabController(
      // length: 3,
      // initialIndex: 0,
      // child:
      Scaffold(
        appBar: AppBar(
          title: const Text("TabBars"),
          bottom: TabBar(
            controller: _controller,
              tabs: const [
                Tab(text: "Cloud", icon: Icon(Icons.cloud),),
                Tab(text: "Terrain",icon: Icon(Icons.terrain),),
                Tab(text: "Wave",icon: Icon(Icons.waving_hand),)
              ]
          ),
        ),
        body: TabBarView(
            controller: _controller,
            children: const [
              Center(
                child: Text("Hey, This is Tab 1 Cloud", style: TextStyle(fontSize: 20),),
              ),
              Center(
                child: Text("Hey, This is Tab 2 Terrain", style: TextStyle(fontSize: 20),),
              ),
              Center(
                child: Text("Hey, This is Tab 3 Wave", style: TextStyle(fontSize: 20),),
              )
            ]
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => MyHomePage())
            );
          },
          child: Icon(Icons.home),
        ),
      )
  //  ,)
    ;
  }
}
