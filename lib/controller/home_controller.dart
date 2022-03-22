import 'package:get/get.dart';

class HomeController extends GetxController{

  String getString() {
    return "CodeWithPatel";
  }



  var count=0.obs;

  increment(){
    count++;
  }
}
