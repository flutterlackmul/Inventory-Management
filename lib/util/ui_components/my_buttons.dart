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
      body: Container(
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("I am Some Description",
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
                onPressed: (){},
                child: const Text(
                    "Elevated Button",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
