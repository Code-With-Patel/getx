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
                child: Text("Route to Second Page")),
            ElevatedButton(
              onPressed: () {
                print("Get Platfomr: ${GetPlatform.isIOS}");
              },
              child: const Text("Get Platform"),
            ),
            ElevatedButton(
              onPressed: () {
                print("Get Hight: ${Get.height}");
                print("Get Width: ${Get.width}");
              },
              child: const Text("Get Size"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                    title: "Here is the Title",
                    content: Text("This is Long Content"),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Text("Cancel")),
                      TextButton(
                          onPressed: () {
                            print("This is Confirm");
                            Get.back();
                          },
                          child: Text("Confirm")),
                    ]);
              },
              child: const Text("Open Dialog"),
            ),
            ElevatedButton(
              onPressed: () {
                // Get.snackbar("CodeWithPatel", "Best Developer through People",
                //     snackPosition: SnackPosition.BOTTOM);

                Get.showSnackbar(GetSnackBar(
                  title: "Code With Patel",
                  message: "Youtube Learning Platform",
                  onTap: (e){
                    Get.back();
                  },
                  duration: Duration(seconds: 2),
                ));
              },
              child: const Text("Open SnackBar"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    alignment: Alignment.center,
                    width: Get.width,
                    height: Get.height*0.5,
                    child: Text("Code With Patel"),
                  ),
                  backgroundColor: Colors.teal
                );
              },
              child: const Text("Open BottomSheet"),
            )
          ],
        ),
      ),
    );
  }
}
