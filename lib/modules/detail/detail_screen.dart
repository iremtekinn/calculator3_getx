import 'package:calculator3_getx/modules/detail/detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
int currentindex = 0;
String result="";
  double height=0;
  double weight=0;
  TextEditingController heightController=TextEditingController();
  TextEditingController weightController=TextEditingController();
class DetailScreen extends GetView<DetailController> {
  
  const DetailScreen({super.key});
   
  @override
  Widget build(BuildContext context) {
   // int currentindex = 0;
  //  String result="";
  // double height=0;
  // double weight=0;
  // TextEditingController heightController=TextEditingController();
  // TextEditingController weightController=TextEditingController();
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
                  Obx(
                    () => Row(
                      children: [
                        radioButton("Female", Colors.grey.shade800, 0),
                        radioButton("Male", Colors.grey.shade800, 1),
                       
                      ],
                    ),
                  ),
                  
                ],
           ),
           )
      ),
    );
  }
  
  Widget radioButton(String value, Color color, int index) {
    return Expanded(
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 12.0),
            height: 50.0,
            child: TextButton(
              style: TextButton.styleFrom(
                side: BorderSide(color: Colors.grey, ),
                backgroundColor:
                    controller.current_index.value == index ? color : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () {
                controller.changeIndex(index);//buraya Navigator.push()
              },
              child: Text(value,
                  style: TextStyle(
                    color: currentindex == index ? Colors.white : color,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  )),
            )));
  }
}