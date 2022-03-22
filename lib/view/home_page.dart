import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/controller/home_controller.dart';
import 'package:getx_tutorial/view/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final homeController=Get.put(HomeController());
//After Binding
    final homeController = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Obx(() => Text(
                  "Count is ${homeController.count}",
                  style: TextStyle(fontSize: 25),
                )),
            ElevatedButton(
                onPressed: () {
                  homeController.increment();
                },
                child: const Text("Increment")),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => SecondPage());
                  // Get.off(SecondPage());
                  //Named Route
                  // Get.toNamed('/second');

                  // print(homeController.getString());
                },
                child: Text("Route to Second Page"))
          ],
        ),
      ),
    );
  }
}
