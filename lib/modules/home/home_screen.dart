import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //child: Text("HomeScreen",style: TextStyle(fontSize: 20),),
        child: Text("${controller.data}",style: TextStyle(fontSize: 20),),
        
      ),
    );
  }
}