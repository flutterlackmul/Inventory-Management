import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_api_application/Model/login.dart';
import 'package:flutter_api_application/Model/dealer_info.dart';
import 'package:flutter_api_application/View/Screens/dealers.dart';
import 'package:flutter_api_application/network/api_client.dart';
import 'package:get_storage/get_storage.dart';
class ApiController {
var dio = Dio();
//var base_url = "http://127.0.0.1:8000/api/";
var base_url = "http://192.168.68.130:80/api/";
var postParams = {'deviceInfo':34};
Future<Login?> getToken(String user_name, String password) async {
  try{
    var targetApi = "login" ;
    var finalApiUrl = base_url+targetApi;
    var postParams = {'userId':user_name,'password':password,'deviceInfo':34,'version':2};
    var response = await ApiClient().postDataWithoutToken(finalApiUrl,postParams);
    var loginData ;
    if(response.statusCode==200)
      {
         var loginData = Login.fromJson(response.data);
         return loginData;
      }
    else{

      return null;
    }
  }
  catch(e){
    return null;
  }
}

Future<DealersInfo?> getDealerInfo() async{
  try{
    var targetApi = "get-dealer-info-list" ;
    var finalApiUrl = base_url+targetApi;
    postParams['location_id']=GetStorage().read('locationId');
    var token = GetStorage().read('accessToken');
    var response = await ApiClient().postDataWithToken(finalApiUrl,postParams,token);

    var dealerInfoData ;
    if(response.statusCode==200){
        var dealerInfoData = DealersInfo.fromJson(response.data);
        return dealerInfoData;
    }
    else
    {
      return null;
    }
  }
  catch(e){
    return null;
  }
}
}