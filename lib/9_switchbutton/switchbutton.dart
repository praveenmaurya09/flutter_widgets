import 'package:flutter/material.dart';

class SwitchButtonPage extends StatefulWidget {
  const SwitchButtonPage({super.key});

  @override
  State<SwitchButtonPage> createState() => _SwitchButtonPageState();
}

class _SwitchButtonPageState extends State<SwitchButtonPage> {

  bool _selectedLightSwitch = false;
  bool _selectedDarkSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switch Buttons"),
      ),
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Light", style: TextStyle(fontSize: 18),),
              Switch(
                  activeColor: Colors.yellow,
                  activeTrackColor: Colors.redAccent,
                  inactiveThumbColor: Colors.black,
                  inactiveTrackColor: Colors.green,
                  value: _selectedLightSwitch,
                  onChanged: (sw) {
                    setState(() {
                      _selectedLightSwitch = sw;
                    });
                  }
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Dark", style: TextStyle(fontSize: 18),),
              Switch(
                  activeColor: Colors.yellow,
                  activeTrackColor: Colors.redAccent,
                  inactiveThumbColor: Colors.black,
                  inactiveTrackColor: Colors.green,
                  value: _selectedDarkSwitch,
                  onChanged: (sw) {
                    setState(() {
                      _selectedDarkSwitch = sw;
                    });
                  }
              )
            ],
          ),
        ],
      ),
    );
  }
}
