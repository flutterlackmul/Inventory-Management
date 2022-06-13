import 'package:flutter/material.dart';

class UiComponents extends StatelessWidget {
  const UiComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var spacecrafts = ["DatePicker","PopupMenuButton",
      "Buttons","Text","PageView","Expanded","Flexible"];
    var myGridView = GridView.builder(

      itemCount: spacecrafts.length,
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {

        return  GestureDetector(
          child:  Card(
            elevation: 5.0,
            child:  Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 10.0, bottom: 10.0,left: 10.0),
              child:  Text(spacecrafts[index],style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, '${spacecrafts[index]}');
            // if(spacecrafts[index]=='DatePicker')
            //   {
            //    // Navigator.push(context,MaterialPageRoute(builder: (context)=> const TDatePicker));
            //     Navigator.pushNamed(context, '${spacecrafts[index]}');
            //   }
            // else if(spacecrafts[index]=='PopupMenuButton')
            // {
            //   Navigator.push(context,MaterialPageRoute(builder: (context)=> const MyPopupMenuButton()));
            // }
            // else if(spacecrafts[index]=='PageView')
            //   {
            //     Navigator.push(context,MaterialPageRoute(builder: (context)=> const MyPageView()));
            //   }
            // else if(spacecrafts[index]=='Expand')
            // {
            //   Navigator.push(context,MaterialPageRoute(builder: (context)=> const Expand()));
            // }
            // else if(spacecrafts[index]=='Flexible')
            // {
            //   Navigator.push(context,MaterialPageRoute(builder: (context)=> const MyFlexible()));
            // }
            // else if(spacecrafts[index]=='Buttons')
            // {
            //   Navigator.push(context,MaterialPageRoute(builder: (context)=> const MyButtons()));
            // }
            // else if(spacecrafts[index]=='Texts')
            // {
            //   Navigator.push(context,MaterialPageRoute(builder: (context)=> const MyText()));
            // }
            // else
            //   {
            //     Navigator.push(context,MaterialPageRoute(builder: (context)=> const Calender()));
            //   }

          },
        );
      },
    );

    return new Scaffold(
      appBar: new AppBar(
          title: new Text("Flutter GridView")
      ),
      body: myGridView,
    );
  }
}
