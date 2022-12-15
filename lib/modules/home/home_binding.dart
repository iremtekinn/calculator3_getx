import 'package:calculator3_getx/modules/home/home_controller.dart';
import 'package:get/get.dart';

class Homebinding extends Bindings{
  @override 
  void dependencies(){
  Get.put(HomeController());
  }
}