import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/view/second_page.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [ElevatedButton(onPressed: () {
                  Get.to(SecondPage());
                  Get.off(SecondPage());
                  //Named Route
                  Get.toNamed('/second');

          }, child: Text("Route to Second Page"))],
        ),
      ),
    );
  }
}
