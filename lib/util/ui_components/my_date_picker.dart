import 'package:flutter/material.dart';
class MyDatePicker extends StatefulWidget {
  const MyDatePicker({Key? key}) : super(key: key);

  @override
  State<MyDatePicker> createState() => _MyDatePickerState();
}

class _MyDatePickerState extends State<MyDatePicker> {
   DateTime _dateTime= DateTime(2022);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: const Text("This the Widget of  Date Picker"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("${_dateTime.day}-${_dateTime.month}-${_dateTime.year}",
              style: const TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            ElevatedButton(
              onPressed: () async {
                DateTime? _newDate = await showDatePicker(context: context,
                    initialDate: _dateTime, firstDate: DateTime(1900), lastDate: DateTime(2500),);
                if(_newDate != null) {
                  setState((){
                    _dateTime = _newDate;
                  });
                }
            },
              child: const Text('Get Date'),
            ),
          ],
          
        ),
      ),
    );
  }
}
