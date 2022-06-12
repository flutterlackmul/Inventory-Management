import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;
  void getHttp() async {
    try {
      var response = await Dio().get(url);
      data = response;
      //print(response);
    } catch (e) {
      print(e);
    }
  }
  @override
  void initState(){
    super.initState();
    // fetchData();
    getHttp();
  }
  fetchData() async {
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    // print(data);
  }

  void dispose(){
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("This is Home Page"),),
      body: Container(
        child: Row(
          children: [
            Text("This is Print Area"),
          Card(
          child: data != null ? ListView.builder(itemBuilder: (context,index){
            return ListTile(
              title: Text(data[index]["title"]),
              subtitle: Text("ID : ${data[index]['id']}"),
              leading: Image.network(data[index]["url"]),

            );

          },) : Center(child: CircularProgressIndicator(),),
      )
          ],

        ),

      )


    );

  }
}
