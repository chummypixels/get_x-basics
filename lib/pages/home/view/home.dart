import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_example/pages/detail/view/detail.dart';
import 'package:get_x_example/pages/home/controller/home_controller.dart';
import 'package:get_x_example/services/api_service.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Screen"),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  "${homeController.count}",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  homeController.increment();
                  //Get.toNamed("/detail");
                  //print(apiService.fetchTextFromApi());
                },
                child: Text("Increment"),
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    textStyle: TextStyle(color: Colors.white)),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed("/detail");
                  //print(apiService.fetchTextFromApi());
                },
                child: Text("Go to detail"),
                style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    textStyle: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ));
  }
}
