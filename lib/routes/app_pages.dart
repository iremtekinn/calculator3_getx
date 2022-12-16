import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get.dart';
import '../modules/detail/detail_binding.dart';
import '../modules/detail/detail_screen.dart';
import '../modules/home/home_binding.dart';
import '../modules/home/home_screen.dart';
part 'app_routes.dart';
class AppPages{
  static const INITAL =Routes.HOME;

  static final routes=[
    GetPage(name: Routes.HOME, 
    page: () => HomeScreen(),
    binding: Homebinding()
    ),
    

    GetPage(name: Routes.Detail, 
    page: () => DetailScreen(),
    binding: Detailbinding()
    ),
    
  ];
}