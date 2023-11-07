import 'package:flutter/material.dart';

class DropDownPage extends StatefulWidget {
  const DropDownPage({super.key});

  @override
  State<DropDownPage> createState() => _DropDownPageState();
}

class _DropDownPageState extends State<DropDownPage> {
  static List<String> items = ["item1", "item2", "item3", "item4"];

  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DropDown Select"),
      ),
      body: Center(
        child: Container(
          width: 300,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(10)),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              isExpanded: true,
              value: dropdownValue,
              onChanged: (value) {
                setState(() {
                  dropdownValue = value;
                });
              },
              items: items.map((value) {
                return DropdownMenuItem(value: value, child: Text(value));
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
