// To parse this JSON data, do
//
//     final login = loginFromJson(jsonString);

import 'dart:convert';

Login loginFromJson(String str) => Login.fromJson(json.decode(str));

String loginToJson(Login data) => json.encode(data.toJson());

class Login {
  Login({
    this.success,
    this.message,
    this.locationId,
    this.designationId,
    this.designation,
    this.userName,
    this.userMobile,
    this.sessionId,
    this.token,
  });

  int? success;
  String? message;
  int? locationId;
  int? designationId;
  String? designation;
  String? userName;
  dynamic? userMobile;
  int? sessionId;
  String? token;

  factory Login.fromJson(Map<String, dynamic> json) => Login(
    success: json["success"],
    message: json["message"],
    locationId: json["location_id"],
    designationId: json["designation_id"],
    designation: json["designation"],
    userName: json["user_name"],
    userMobile: json["user_mobile"],
    sessionId: json["session_id"],
    token: json["token"],
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "message": message,
    "location_id": locationId,
    "designation_id": designationId,
    "designation": designation,
    "user_name": userName,
    "user_mobile": userMobile,
    "session_id": sessionId,
    "token": token,
  };
}
