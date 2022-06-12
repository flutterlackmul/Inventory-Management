import 'package:flutter/material.dart';
class Expand extends StatefulWidget {
  const Expand({Key? key}) : super(key: key);

  @override
  State<Expand> createState() => _ExpandState();
}

class _ExpandState extends State<Expand> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is Widget of Expand"),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.blueAccent,
                height: 200,
              ),
            ),
            Expanded(
              flex: 2,
                child: Container(
                  color: Colors.orangeAccent,height: 200,
                ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.purpleAccent,height: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
