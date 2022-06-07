// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home/controller/home_controller.dart';

class DetailScreen extends StatefulWidget {
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final home_controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Testing Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Counter: ${home_controller.count}",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Go Back"),
            ),
          )
        ],
      ),
    );
  }
}
