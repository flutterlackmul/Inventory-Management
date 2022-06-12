import 'package:flutter/material.dart';
class MyPageView extends StatefulWidget {
  const MyPageView({Key? key}) : super(key: key);

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is Widget of Page View"),
      ),
      body: PageView(
        children: [
          Container(
            child: Text(
              "Page-1",
              style: TextStyle(
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold,
                fontSize: 50,

              ),
            ),
    ),

          Container(
              child: const Text(
            "Page-2",
              style: TextStyle(
                color: Colors.white,
                backgroundColor: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
            ),
          ),

          Container(
            child: const Text(
            "Page-3",
            style: TextStyle(
              color: Colors.yellow,
              backgroundColor: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
