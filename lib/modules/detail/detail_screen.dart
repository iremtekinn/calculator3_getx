import 'package:calculator3_getx/modules/detail/detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailScreen extends GetView<DetailController> {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Icon(Icons.flutter_dash)),
        
      ),
    );
  }
}