// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/detail/view/detail.dart';
import 'pages/home/view/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomeScreen(),
      getPages: [
        GetPage(
          name: "/home",
          page: () => HomeScreen(),
        ),
        GetPage(
          name: "/detail",
          page: () => DetailScreen(),
        ),
      ],
      initialRoute: "/home",
    );
  }
}
