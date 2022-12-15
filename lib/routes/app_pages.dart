import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get.dart';
import '../modules/home/home_binding.dart';
import '../modules/home/home_screen.dart';

class AppPages{
  static const INITAL =Routes.HOME;

  static final routes=[
    GetPage(name: Routes.HOME, 
    page: () => HomeScreen(),
    binding: Homebinding()
    ),

    
  ];
}