import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_api_application/Model/login.dart';
import 'package:flutter_api_application/util/common_util.dart';
import 'package:get_storage/get_storage.dart';

import '../util/constants.dart';
import 'home_page.dart';
import 'package:flutter_api_application/Controller/Api_Controller.dart';
import 'package:fluttertoast/fluttertoast.dart';
class LoginPage extends StatefulWidget {


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("This is Login Page"),),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/img1.jpg",
          fit: BoxFit.cover,
          color: Colors.black.withOpacity(0.7),
            colorBlendMode: BlendMode.darken,
          ),
         Center(
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Center(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _usernameController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: "Enter User Id",
                              labelText: "User Id",
                            ),

                          ),
                          TextFormField(
                            controller: _passwordController,
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: "Enter Password",
                              labelText: "Password",
                            ),

                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: Stack(
                                children: <Widget>[
                                  Positioned.fill(
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: <Color>[
                                            Color(0xFF0D47A1),
                                            Color(0xFF1976D2),
                                            Color(0xFF42A5F5),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      padding: const EdgeInsets.all(16.0),
                                      primary: Colors.white,
                                      textStyle: const TextStyle(fontSize: 20),
                                    ),
                                    onPressed: () async {
                                      GetStorage().write('username', _usernameController.text);
                                      GetStorage().write('password', _passwordController.text);

                                      print("User Name : ${GetStorage().read('username')}");
                                      Login? loginData = await ApiController().getToken(_usernameController.text, _passwordController.text);
                                      await Future.delayed(const Duration(seconds: 2));
                                       if(loginData?.success==1)
                                         {
                                           GetStorage().write('logged',true);
                                           GetStorage().write('locationId',loginData?.locationId);
                                           GetStorage().write('accessToken',loginData?.token);
                                            if(!mounted) return;
                                           Navigator.pushNamed(context,'Home');
                                         }
                                    },
                                    child: const Text('signup'),
                                  ),

                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ),
        ),
           ),
         ),
    ],
      ),
    );
  }

}
