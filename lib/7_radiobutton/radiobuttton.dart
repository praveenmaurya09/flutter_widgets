import 'package:flutter/material.dart';

class RadioButtonPage extends StatefulWidget {
  const RadioButtonPage({super.key});

  @override
  State<RadioButtonPage> createState() => _RadioButtonPageState();
}

class _RadioButtonPageState extends State<RadioButtonPage> {
  int _selectedRadio = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio Buttons"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Radio(
                value: 0,
                groupValue: _selectedRadio,
                onChanged: (radio){
                  setState(() {
                    _selectedRadio = radio!;
                  });
                }
            ),
            title: const Text("Flutter App Development"),
          ),
          ListTile(
            leading: Radio(
                value: 1,
                groupValue: _selectedRadio,
                onChanged: (radio){
                  setState(() {
                    _selectedRadio = radio!;
                  });
                }
            ),
            title: const Text("Android App Development"),
          ),
          ListTile(
            leading: Radio(
                value: 2,
                groupValue: _selectedRadio,
                onChanged: (radio){
                  setState(() {
                    _selectedRadio = radio!;
                  });
                }
            ),
            title: const Text("Swift App Development"),
          ),
          ListTile(
            leading: Radio(
                value: 3,
                groupValue: _selectedRadio,
                onChanged: (radio){
                  setState(() {
                    _selectedRadio = radio!;
                  });
                }
            ),
            title: const Text("React App Development"),
          ),


        ],
      ),
    );
  }
}
