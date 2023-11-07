import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  const CheckBoxPage({super.key});

  @override
  State<CheckBoxPage> createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  bool _selectedBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Check Box"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Checkbox(
              checkColor: Colors.black,
                activeColor: Colors.yellow,
                value: _selectedBox,
                onChanged: (box){
                  setState(() {
                    _selectedBox = box!;
                  });
                }
            ),
            title: const Text("Terms and Conditions"),
          ),

        ],
      ),
    );
  }
}
