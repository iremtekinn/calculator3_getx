import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: Container(
        //child: Center(child: Icon(Icons.flutter_dash)),
        child:Padding(
           padding: EdgeInsets.only(right: 15, left: 15),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height:80),
                  Text("Let's calculate",
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 30,
                          fontWeight: FontWeight.w600)),
                          Text("your current BMI",
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 30,
                          fontWeight: FontWeight.w600)),
                          SizedBox(height: 40),
                  Text("You can find out whether you are",
                      style: TextStyle(color: Colors.grey[700], fontSize: 16,fontWeight: FontWeight.w500
                      )),
                      Text("overweight, underweight or ideal weight.",
                      style: TextStyle(color: Colors.grey[700], fontSize: 16,fontWeight: FontWeight.w500)),
                  SizedBox(height: 20),
                /*   Obx(
                    () => Row(
                      children: [
                        radioButton("Female", Colors.grey.shade800, 0),
                        radioButton("Male", Colors.grey.shade800, 1),
                       
                      ],
                    ),
                  ), */
                   SizedBox(height: 20.0),
                  TextFormField(
                      keyboardType: TextInputType.number,
                 //  controller:controller.
                      //textAlign:TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "Age",
                      )),
                      TextField(
                      keyboardType: TextInputType.number,
                       controller:controller.heightController,
                      
                      decoration: InputDecoration(
                          hintText: "Height", suffixText: 'cm')),
                  SizedBox(height: 20.0),
                  TextFormField(
                      keyboardType: TextInputType.number,
                       controller:controller.weightController,
                      //textAlign:TextAlign.center,
                      decoration: InputDecoration(
                          hintText: "Weight", suffixText: "kg")),
                  SizedBox(height: 20.0),
                 InkWell(
                  onTap:() {
                    print("tıklandııııııııııııııı");
                    controller.bmiHesapla();
                  },
                  child:Center(
                    child: Container(
                      alignment: Alignment.center,
                      width: 300,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Text("Calculate BMI")),
                  ),
                    
                 ),
                 
                  
                ],
           ),
           )
      ),
    );
  }
}
