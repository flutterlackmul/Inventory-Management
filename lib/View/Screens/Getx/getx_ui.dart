import 'package:flutter/material.dart';
import 'myget_controller.dart';
import 'package:get/get.dart';
class GetxUi extends StatefulWidget {
  const GetxUi({Key? key}) : super(key: key);

  @override
  State<GetxUi> createState() => _GetxUiState();
}

class _GetxUiState extends State<GetxUi> {
  @override
  Widget build(BuildContext context) {
    MygetController mc = Get.put(MygetController());
    final _yourAge = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Example"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                Obx(() =>
                    Column(
                      children: [
                        Text('${mc.log2.value}',
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange,
                        ),
                        ),
                        TextFormField(
                          controller: _yourAge,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "${mc.ageHint.value}${mc.log2.value}",
                            labelText: "Age Information",
                          ),
                        )
                      ],
                    ),
                ),

              ElevatedButton(

                  onPressed: (){
                  mc.log2.value +=5;
                  mc.change();
                  },
                style: ElevatedButton.styleFrom(
                  primary: Colors.indigo,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15), // <-- Radius
                  ),
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                  child: Text('Add 5',

                  ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
