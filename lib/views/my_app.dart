import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import '../main_binding.dart';
import '../core/constants/route_constants.dart';

import 'app_pages.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: RouteConstants.home,
        initialBinding: MainBinding(),
        getPages: AppPages.pages,
      ),
    );
  }
}
