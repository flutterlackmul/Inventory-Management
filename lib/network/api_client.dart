import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
class ApiClient {
  var dio = Dio() ;
 Future<Response<dynamic>> getData(url) async{
  return await dio.get(url);
 }

 Future<Response<dynamic>> postDataWithToken(url,postParams,token) async{
   dio.options.headers['content-Type'] = 'application/json';
   dio.options.headers["authorization"] = "Bearer ${token}";
    return await dio.post(
      url,data: postParams,
    );
 }
  Future<Response<dynamic>> postDataWithoutToken(url,postParams) async{
    return await dio.post(url,data: postParams,
      options: Options(
        headers: {
          Headers.acceptHeader: 'application/json', // set content-length
        },
      )
    );
  }
}
