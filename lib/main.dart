import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_api_application/util/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_api_application/routes/route.dart' as route;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
void main()  {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Flutter Inventory",
      debugShowCheckedModeBanner: false,
      onGenerateRoute: route.controller,
      initialRoute: route.Login,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    );
  }
}




