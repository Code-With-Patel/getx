import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_tutorial/controller/home_binding.dart';
import 'package:getx_tutorial/view/home_page.dart';
import 'package:getx_tutorial/view/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // getPages: [
      //   GetPage(name: "/home", page: () => HomePage(), binding: HomeBinding()),
      //   GetPage(name: "/second", page: () => SecondPage()),
      // ],
      // initialRoute: '/home',
      home: HomePage(),
      initialBinding: HomeBinding(),
    );
  }
}
