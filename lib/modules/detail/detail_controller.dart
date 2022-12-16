import 'package:get/get.dart';

import '../../routes/app_pages.dart';

class DetailController extends GetxController{
  @override 
  void onReady()async {
    super.onReady();
    //print("Splash sayfasi acildi");
    await Future.delayed(Duration(milliseconds: 3000));
    Get.toNamed(Routes.HOME,parameters: {'data':'Emre Akca'});
  }
}