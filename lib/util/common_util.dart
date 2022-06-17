import 'package:flutter/material.dart';

class CommonUtil{
  void showToast(BuildContext context,String msg) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content:  Text(msg),
        action: SnackBarAction(label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

  AppBar customAppbar (String title)
  {
   return AppBar(
      title: Text(title),
      backgroundColor: Colors.deepOrange,
      foregroundColor: Colors.tealAccent,
    );
  }
}