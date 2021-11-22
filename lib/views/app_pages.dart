import 'package:get/get.dart';
import 'package:getx_project/views/screens/home/home_binding.dart';
import 'package:getx_project/core/constants/route_constants.dart';
import 'package:getx_project/views/screens/home/home_screen.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: RouteConstants.home,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}
