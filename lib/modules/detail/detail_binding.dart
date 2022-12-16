import 'package:calculator3_getx/modules/detail/detail_controller.dart';
import 'package:get/get.dart';

class Detailbinding extends Bindings{
  @override 
  void dependencies(){
  Get.put(DetailController());
  }
} 