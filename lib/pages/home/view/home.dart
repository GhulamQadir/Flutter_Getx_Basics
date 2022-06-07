// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../detail/view/detail.dart';
import '../controller/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final home_controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Getx learning"),
        ),
        body: Obx(
          () => Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Counter: ${home_controller.count}",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),

              // counter.customButton(counter.increment(), "increment"),
              // counter.customButton(counter.decrement(), "decrement"),
              TextButton(
                onPressed: () {
                  home_controller.increment();
                },
                child: Text("Increment"),
              ),
              TextButton(
                onPressed: () {
                  home_controller.decrement();
                },
                child: Text("Decrement"),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(DetailScreen());
                  // Get.toNamed("/detail"); //by giving route name
                  // Get.off(screen) for not come back to the screen
                },
                child: Text(
                  "Go to testing screen",
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey, onPrimary: Colors.white),
              ),
            ]),
          ),
        ));
  }
}
