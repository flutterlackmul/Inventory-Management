import 'package:flutter/material.dart';
import 'package:flutter_api_application/pages/home_page.dart';
import 'package:flutter_api_application/pages/login_page.dart';
// import 'package:flash/flash.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_api_application/util/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
Future main() async  {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs =   await SharedPreferences.getInstance();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    );
  }
}


