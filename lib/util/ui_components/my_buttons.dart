import 'package:flutter/material.dart';
class MyButtons extends StatefulWidget {
  const MyButtons({Key? key}) : super(key: key);

  @override
  State<MyButtons> createState() => _MyButtonsState();
}

class _MyButtonsState extends State<MyButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button Widgets"),
      ),
    );
  }
}
