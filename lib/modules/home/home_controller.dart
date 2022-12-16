import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/routes.dart';

class HomeController extends GetxController{


  double height=0;
  double weight=0;
  double bmi = 0.0;
  TextEditingController heightController=TextEditingController();
  TextEditingController weightController=TextEditingController();


 bmiHesapla(){
  if(weightController.text.isEmpty||heightController.text.isEmpty){
    print("boş olamazzzzzzzzzzzzzzzzzzz");
    
  }
  else {

hesaplama();
heightController.clear();
weightController.clear();
}


  }

  hesaplama() {
    double a = double.parse(heightController.text) / 100;
    double b = a * a;
    bmi = double.parse(weightController.text) / b;

    print("vücut kitle endeksisdsdsd: " + bmi.toString());

    if (bmi < 18.5) {
      Get.toNamed(Routes.Detail);
    
    } else if (bmi >= 18.5 && bmi <= 25) {
      Get.toNamed(Routes.Detail);
      print("vücut kitle endeksi: " + bmi.toString());
   
    } else if (bmi > 25 && bmi <= 30) {
      Get.toNamed(Routes.Detail);
    
   
    } else {
      Get.toNamed(Routes.Detail);
      
    }
  }
 }
