import 'package:flutter/material.dart';
import 'package:flutter_api_application/Model/dealer_info.dart';
import 'package:flutter_api_application/Model/products_model.dart';
import '../Model/products_model.dart';
class MyDropdown {
  Widget dropDownDealer(List<Dealer>? items, Dealer selectedValue, String hint, Function(Dealer value) onChange,
      {double? width, double? viewWidth, double height = 50, bool isEditable = true, Color? bgColor, double? hMargin}) {
    width = 80;
    // viewWidth = viewWidth ?? Get.width;
    hMargin = 10;
    return Container(
      margin: EdgeInsets.only(left: hMargin, top: 5, right: hMargin, bottom: 5),
      height: height,
      width: viewWidth,
      alignment: Alignment.center,
      // decoration: boxDecorationRoundBorder(bgColor: Get.theme.primaryColorLight.withOpacity(0.25)),
      child: DropdownButton<Dealer>(
        // value: selectedValue.id == 0 ? null : selectedValue,
        value: selectedValue.dealerId==null?null:selectedValue,
        hint: Text(hint),
        icon: Icon(Icons.keyboard_arrow_down_outlined),
        elevation: 10,
        dropdownColor: Colors.green,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        //style: Get.textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
        underline: Container(height: 0, color: Colors.transparent),

        onChanged: isEditable
            ? (value) {
          onChange(value!);
        }
            : null,
        items: items?.map<DropdownMenuItem<Dealer>>((Dealer value) {
          return DropdownMenuItem<Dealer>(
            value: value,
            child: Row(
              children: [
                Text("${value.dealerId.toString()} - "),
                Text(value.dealerName.toString()),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget dropDownProduct(List<AllPrimaryProduct>? productItems, AllPrimaryProduct selectedProductValue, String productHint, Function(AllPrimaryProduct productValue) onChange,
      {double? width, double? viewWidth, double height = 50, bool isEditable = true, Color? bgColor, double? hMargin}) {
    width = 80;
    // viewWidth = viewWidth ?? Get.width;
    hMargin = 10;
    return Container(
      margin: EdgeInsets.only(left: hMargin, top: 5, right: hMargin, bottom: 5),
      height: height,
      width: viewWidth,
      alignment: Alignment.center,
      // decoration: boxDecorationRoundBorder(bgColor: Get.theme.primaryColorLight.withOpacity(0.25)),
      child: DropdownButton<AllPrimaryProduct>(
        // value: selectedValue.id == 0 ? null : selectedValue,
        value: selectedProductValue.productId==null?null:selectedProductValue,
        hint: Text(productHint),
        icon: Icon(Icons.keyboard_arrow_down_outlined),
        elevation: 10,
        dropdownColor: Colors.green,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        //style: Get.textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
        underline: Container(height: 0, color: Colors.transparent),

        onChanged: isEditable
            ? (productValue) {
          onChange(selectedProductValue!);
        }
            : null,
        items: productItems?.map<DropdownMenuItem<AllPrimaryProduct>>((AllPrimaryProduct value) {
          return DropdownMenuItem<AllPrimaryProduct>(
            value: value,
            child:
                Row(
                  children: [
                    Text("${value.productCode.toString()} - "),
                    Text("name : ${value.productName.toString()}"),
                  ],
                )

          );
        }).toList(),
      ),
    );
  }
}
