import 'package:flutter/material.dart';

import 'package:flutter_api_application/util/ui_components/my_buttons.dart';
import 'package:flutter_api_application/util/ui_components/my_expand.dart';
import 'package:flutter_api_application/util/ui_components/my_flexible.dart';
import 'package:flutter_api_application/util/ui_components/my_page_view.dart';
import 'package:flutter_api_application/util/ui_components/my_popup_menu_button.dart';
import 'package:flutter_api_application/util/ui_components/my_text.dart';
import 'package:flutter_api_application/util/ui_components/my_date_picker.dart';
import 'package:flutter_api_application/pages/login_page.dart';
import 'package:flutter_api_application/View/Screens/Home_Screen.dart';
const String Login = 'LoginPage';
const String DatePicker = 'DatePicker';
const String PopupMenuButton = 'PopupMenuButton';
const String Buttons = 'Buttons';
const String Text = 'Text';
const String PageView = 'PageView';
const String Expanded = 'Expanded';
const String Flexible = 'Flexible';
const String HomePage = 'Home';
Route<dynamic> controller(RouteSettings settings){
  switch(settings.name) {
    case HomePage:
      return MaterialPageRoute(builder: (context) => HomeScreen());
    case Login:
      return MaterialPageRoute(builder: (context) => LoginPage());
    case DatePicker:
      return MaterialPageRoute(builder: (context) => MyDatePicker());
    case PopupMenuButton:
      return MaterialPageRoute(builder: (context) => MyPopupMenuButton());
    case Buttons:
      return MaterialPageRoute(builder: (context) => MyButtons());
    case Text:
      return MaterialPageRoute(builder: (context) => MyText());
    case PageView:
      return MaterialPageRoute(builder: (context) => MyPageView());
    case Expanded:
      return MaterialPageRoute(builder: (context) => MyExpand());
    case Flexible:
      return MaterialPageRoute(builder: (context) => MyFlexible());
    default:
      throw("This route name does not exist");
  }


}