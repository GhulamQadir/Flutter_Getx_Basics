// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt count = 0.obs;
  increment() {
    count++;
    Get.defaultDialog(title: "Counter increasing");
  }

  decrement() {
    if (count > 0) {
      count--;
    }
    Get.snackbar("Counter", "Counter decreasing",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.blue,
        colorText: Colors.white);
  }

  customButton(funct, String funcName) {
    return TextButton(
      onPressed: () {
        funct;
      },
      child: Text(funcName),
    );
  }
}
