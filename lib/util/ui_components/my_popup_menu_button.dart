import 'package:flutter/material.dart';
class MyPopupMenuButton extends StatefulWidget {
  const MyPopupMenuButton({Key? key}) : super(key: key);

  @override
  State<MyPopupMenuButton> createState() => _MyPopupMenuButtonState();
}

class _MyPopupMenuButtonState extends State<MyPopupMenuButton> {
  String title = "First Page";
  String firstPage = "First Page";
  String secondPage = "Second Page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          PopupMenuButton(
            itemBuilder: (context)=>[
            PopupMenuItem(
              child: Text(firstPage),
              value: firstPage,
            ),
            PopupMenuItem(
              child: Text(secondPage),
              value: secondPage,
            )
          ],
          onSelected: (String newValue){
              setState((){
                title = newValue;
              });
          },
          )
        ],

      ),
    );
  }
}
