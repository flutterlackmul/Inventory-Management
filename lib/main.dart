import 'package:flutter/material.dart';
import 'package:flutter_api_application/pages/home_page.dart';
import 'package:flutter_api_application/pages/login_page.dart';

import 'package:flutter_api_application/util/ui_components/my_buttons.dart';
import 'package:flutter_api_application/util/ui_components/my_expand.dart';
import 'package:flutter_api_application/util/ui_components/my_flexible.dart';

import 'package:flutter_api_application/util/ui_components/my_page_view.dart';
import 'package:flutter_api_application/util/ui_components/my_popup_menu_button.dart';
import 'package:flutter_api_application/util/ui_components/my_text.dart';
// import 'package:flash/flash.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_api_application/util/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_api_application/util/ui_components/my_date_picker.dart';
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
      title: "Flutter Inventory",
      debugShowCheckedModeBanner: false,
     // home: LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        '/': (context) =>  LoginPage(),
        'DatePicker': (context) => const MyDatePicker(),
        'PopupMenuButton': (context) => const MyPopupMenuButton(),
        'Buttons': (context) => const MyButtons(),
        'Text': (context) => const MyText(),
        'PageView': (context) => const MyPageView(),
        'Expanded': (context) => const MyExpand(),
        'Flexible': (context) => const MyFlexible(),
        'DatePicker': (context) => const MyDatePicker(),
        'DatePicker': (context) => const MyDatePicker(),
      },
    );
  }
}


