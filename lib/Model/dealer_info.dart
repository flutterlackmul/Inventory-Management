// To parse this JSON data, do
//
//     final dealerInfo = dealerInfoFromJson(jsonString);

import 'dart:convert';

DealersInfo dealerInfoFromJson(String str) => DealersInfo.fromJson(json.decode(str));

String dealerInfoToJson(DealersInfo data) => json.encode(data.toJson());

class DealersInfo {
  DealersInfo({
    this.allDealer,
    this.success,
    this.message,
    this.sessionId,
  });

  List<Dealer>? allDealer;
  int? success;
  String? message;
  int? sessionId;

  factory DealersInfo.fromJson(Map<String, dynamic> json) => DealersInfo(
    allDealer: List<Dealer>.from(json["all_dealer"].map((x) => Dealer.fromJson(x))),
    success: json["success"],
    message: json["message"],
    sessionId: json["session_id"],
  );

  Map<String, dynamic> toJson() => {
    "all_dealer": allDealer==null ? null : List<dynamic>.from(allDealer!.map((x) => x.toJson())),
    "success": success,
    "message": message,
    "session_id": sessionId,
  };
}

class Dealer {
  Dealer({
    this.dealerId,
    this.dealerCode,
    this.dealerName,
    this.dealerAddress,
    this.mobileNo,
    this.baseId,
    this.baseName,
    this.zoneId,
    this.zoneName,
    this.regionId,
    this.regionName,
    this.soId,
    this.soName,
  });

  int? dealerId;
  String? dealerCode;
  String? dealerName;
  String? dealerAddress;
  String? mobileNo;
  int? baseId;
  String? baseName;
  int? zoneId;
  String? zoneName;
  int? regionId;
  String? regionName;
  int? soId;
  String? soName;

  factory Dealer.fromJson(Map<String, dynamic> json) => Dealer(
    dealerId: json["dealer_id"],
    dealerCode: json["dealer_code"],
    dealerName: json["dealer_name"],
    dealerAddress: json["dealer_address"],
    mobileNo: json["mobile_no"],
    baseId: json["base_id"],
    baseName: json["base_name"],
    zoneId: json["zone_id"],
    zoneName: json["zone_name"],
    regionId: json["region_id"],
    regionName: json["region_name"],
    soId: json["so_id"],
    soName: json["so_name"],
  );

  Map<String, dynamic> toJson() => {
    "dealer_id": dealerId,
    "dealer_code": dealerCode,
    "dealer_name": dealerName,
    "dealer_address": dealerAddress,
    "mobile_no": mobileNo,
    "base_id": baseId,
    "base_name": baseName,
    "zone_id": zoneId,
    "zone_name": zoneName,
    "region_id": regionId,
    "region_name": regionName,
    "so_id": soId,
    "so_name": soName,
  };
}
