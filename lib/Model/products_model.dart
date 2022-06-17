// To parse this JSON data, do
//
//     final productsModel = productsModelFromJson(jsonString);

import 'dart:convert';

ProductsModel productsModelFromJson(String str) => ProductsModel.fromJson(json.decode(str));

String productsModelToJson(ProductsModel data) => json.encode(data.toJson());

class ProductsModel {
  ProductsModel({
    this.allPrimaryProduct,
    this.success,
    this.message,
    this.sessionId,
  });

  List<AllPrimaryProduct>? allPrimaryProduct;
  int? success;
  String? message;
  int? sessionId;

  factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
    allPrimaryProduct: List<AllPrimaryProduct>.from(json["all_primary_product"].map((x) => AllPrimaryProduct.fromJson(x))),
    success: json["success"],
    message: json["message"],
    sessionId: json["session_id"],
  );

  Map<String, dynamic> toJson() => {
    "all_primary_product": List<dynamic>.from(allPrimaryProduct!.map((x) => x.toJson())),
    "success": success,
    "message": message,
    "session_id": sessionId,
  };
}

class AllPrimaryProduct {
  AllPrimaryProduct({
    this.productId,
    this.productCode,
    this.design,
    this.productName,
    this.productCategoryId,
    this.size,
    this.dealerPrice,
    this.mrp,
  });

  int? productId;
  String? productCode;
  Design? design;
  String? productName;
  int? productCategoryId;
  String? size;
  int? dealerPrice;
  int? mrp;

  factory AllPrimaryProduct.fromJson(Map<String, dynamic> json) => AllPrimaryProduct(
    productId: json["product_id"],
    productCode: json["product_code"],
    design: designValues.map[json["design"]],
    productName: json["product_name"],
    productCategoryId: json["product_category_id"],
    size: json["size"],
    dealerPrice: json["dealer_price"],
    mrp: json["MRP"],
  );

  Map<String, dynamic> toJson() => {
    "product_id": productId,
    "product_code": productCode,
    "design": designValues.reverse![design],
    "product_name": productName,
    "product_category_id": productCategoryId,
    "size": size,
    "dealer_price": dealerPrice,
    "MRP": mrp,
  };
}

enum Design { JHURIFUL, ROSE_VALLEY, DREAM, RUPOSI, BADHUA, ALPONA, ROMONI, RESHMI, QUEEN, MADHOBI, PRIYA, PRIAY, TOM_JERRY, ANGRY_BIRDS, WINNIE_THE_POOH, DESIGN_RUPOSI, LOTAPATA, COFFEE, SUNSHINE, FRESH_VEGETABLE, PARISSO_YELLOW, PARISSO_BLUE, TOM_AMP_JERRY, SKY_BLUE, ORANGE, RED, BLUE_BERRY }

final designValues = EnumValues({
  "Alpona": Design.ALPONA,
  "Angry Birds": Design.ANGRY_BIRDS,
  "Badhua": Design.BADHUA,
  "Blue Berry": Design.BLUE_BERRY,
  "Coffee": Design.COFFEE,
  "ruposi": Design.DESIGN_RUPOSI,
  "Dream": Design.DREAM,
  "Fresh Vegetable": Design.FRESH_VEGETABLE,
  "Jhuriful": Design.JHURIFUL,
  "Lotapata": Design.LOTAPATA,
  "Madhobi": Design.MADHOBI,
  "Orange": Design.ORANGE,
  "Parisso Blue": Design.PARISSO_BLUE,
  "Parisso Yellow": Design.PARISSO_YELLOW,
  "Priay": Design.PRIAY,
  "Priya": Design.PRIYA,
  "Queen": Design.QUEEN,
  "Red": Design.RED,
  "Reshmi": Design.RESHMI,
  "Romoni": Design.ROMONI,
  "Rose Valley": Design.ROSE_VALLEY,
  "Ruposi": Design.RUPOSI,
  "Sky Blue": Design.SKY_BLUE,
  "Sunshine": Design.SUNSHINE,
  "Tom &amp; Jerry": Design.TOM_AMP_JERRY,
  "Tom & Jerry": Design.TOM_JERRY,
  "Winnie the Pooh": Design.WINNIE_THE_POOH
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    if(reverse==null)
      {

      }
    else
      {
        return reverseMap;
      }

  }
}
