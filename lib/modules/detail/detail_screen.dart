import 'package:calculator3_getx/modules/detail/detail_controller.dart';
import 'package:calculator3_getx/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class DetailScreen extends GetView<HomeController> {
  
  const DetailScreen({super.key});
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(controller.bmi.toStringAsFixed(2),style: TextStyle(color: Colors.red,fontSize: 30),),
      ),
    );
  
  }
  
  
}