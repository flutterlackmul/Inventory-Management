import 'package:flutter/material.dart';
import 'package:get/get.dart';
class MygetController extends GetxController {
RxInt log2 = 0.obs;
RxString ageHint = "Your age is ".obs;

void change(){
  log2.value++;
}
}
