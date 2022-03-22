import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/controller/home_controller.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get.lazyPut(() => HomeController());
    final homeController = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
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
                child: Text("Increment")),
            ElevatedButton(
                onPressed: () {
                  // Get.back();

                  print(homeController.getString());
                },
                child: Text("Get Back to First Page"))
          ],
        ),
      ),
    );
  }
}
