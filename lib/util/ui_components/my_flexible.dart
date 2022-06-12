import 'package:flutter/material.dart';
class MyFlexible extends StatefulWidget {
  const MyFlexible({Key? key}) : super(key: key);

  @override
  State<MyFlexible> createState() => _MyFlexibleState();
}

class _MyFlexibleState extends State<MyFlexible> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is Widget of Flexible"),
      ),
      body: Center(
        child: Column(
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
                child: Container(
                  color: Colors.blue,
                  height: 50,

            ),
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(
                color: Colors.red,
                height: 150,

              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                color: Colors.green,
                height: 150,

              ),
            ),
          ],
        ),
      ),
    );
  }
}
