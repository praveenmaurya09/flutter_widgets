import 'package:flutter/material.dart';

class MyCardPage extends StatefulWidget {
  const MyCardPage({super.key});

  @override
  State<MyCardPage> createState() => _MyCardPageState();
}

class _MyCardPageState extends State<MyCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Cards"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return _cardItem();
          },
        ),
      ),
    );
  }
}


_cardItem () {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const ListTile(
          leading: Icon(Icons.music_note, size: 30,),
          title: Text("Unknown Artist"),
          subtitle: Text("Prepared by unknown person"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(onPressed: () {}, child: const Text("Delete")),
            TextButton(onPressed: () {}, child: const Text("Listen")),
          ],
        )
      ],
    ),
  );
}