import 'package:flutter/material.dart';

class ModalBottomSheetPage extends StatefulWidget {
  const ModalBottomSheetPage({super.key});

  @override
  State<ModalBottomSheetPage> createState() => _ModalBottomSheetPageState();
}

class _ModalBottomSheetPageState extends State<ModalBottomSheetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Modal Bottom Sheet"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: _showBottomSheet,
            child: const Text("Modal Bottom Sheet")),
      ),
    );
  }

  _showBottomSheet() {
    return showModalBottomSheet(

        // enableDrag: false,
        //   isDismissible: false,
        // isScrollControlled: true,
        context: context,
        builder: (context) {
          return Container(
            child: ListView(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
              children: const [
                Text(
                    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, "
                    "as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' "
                    "will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."
                    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, "
                    "as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' "
                    "will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)")
              ],
            ),
          );
        });
  }
}
