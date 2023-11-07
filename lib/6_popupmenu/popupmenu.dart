import 'package:flutter/material.dart';

class PopUpMenuPage extends StatefulWidget {
  const PopUpMenuPage({super.key});

  @override
  State<PopUpMenuPage> createState() => _PopUpMenuPageState();
}

class _PopUpMenuPageState extends State<PopUpMenuPage> {

  int _selectedMenu = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PopUPMenu"),
        actions: [
          PopupMenuButton(
              onSelected: (menu) {
                setState(() {
                  _selectedMenu = menu;
                });
              },
              initialValue: _selectedMenu,
              itemBuilder: (context) {
                return const [
                  PopupMenuItem(
                    value: 0,
                    child: Text("Item 1"),
                  ),
                  PopupMenuItem(
                    value: 1,
                    child: Text("Item 2"),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text("Item 3"),
                  )
                ];
              })
        ],
      ),
    );
  }
}
