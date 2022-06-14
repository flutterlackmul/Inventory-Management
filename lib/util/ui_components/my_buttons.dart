import 'package:flutter/material.dart';
class MyButtons extends StatefulWidget {
  const MyButtons({Key? key}) : super(key: key);
  @override
  State<MyButtons> createState() => _MyButtonsState();
}

class _MyButtonsState extends State<MyButtons> {
  var myText = "I am Some Description";
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.black87,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
  );
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.black87,
    primary: Colors.grey[300],
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );
  // void initState(){
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button Widgets"),
      ),
      body: Container(
        width: 600,
        height: 800,
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>  [
             Text(myText,
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: (){
                  myText = "I am an Elevated Button";
                  setState((){});
                },
                child: const Text(
                    "Elevated Button",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                )
            ),

            TextButton(onPressed: (){
              myText = "I am a Text Button";
              setState((){});
            },
              style: ButtonStyle(foregroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange)),
              child: Text("Text Button",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                )
              ),
            ),

            // TextButton(onPressed: (){
            //   myText = "I am a Text Button  Like Flat Button";
            //   setState((){});
            // },
            //   style: flatButtonStyle,
            //   child: Text("Text Button Like Flat Button",
            //       style: TextStyle(
            //         fontWeight: FontWeight.bold,
            //         fontSize: 40,
            //       )
            //   ),
            // ),
            ElevatedButton(
              style: raisedButtonStyle,
              onPressed: () {
                myText = "I am a RaisedButton";
                setState((){});
              },
              child: Text('Looks like a RaisedButton'),
            )
          ],
        ),
      ),
    );
  }
}
