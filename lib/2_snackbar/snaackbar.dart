import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MySnackBar extends StatefulWidget {
  const MySnackBar({super.key});

  @override
  State<MySnackBar> createState() => _MySnackBarState();
}

class _MySnackBarState extends State<MySnackBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SnackBar"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: "Hello, I''m Toast Message",
                      gravity: ToastGravity.BOTTOM,
                      fontSize: 16,
                      toastLength: Toast.LENGTH_SHORT,
                      textColor: Colors.white
                  );
                },
             
                child: const Text("Toast Message"),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () async
                {
                  ScaffoldMessenger.of(context).showSnackBar(
                   const SnackBar(content: Text("Hello, I''m SnackBar"))
                  );
                  await Future.delayed(const Duration(seconds: 2));
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                },
                child: const Text("SnackBar Message"))
          ],
        ),
      ),
    );
  }
}
