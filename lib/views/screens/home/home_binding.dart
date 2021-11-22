import 'package:get/get.dart';
import 'package:getx_project/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(
        Get.find(),
      ),
    );
  }
}
