import 'package:get/get.dart';
import 'package:getx_project/services/api/api_client.dart';
import 'package:getx_project/services/remote/home_service.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApiClient());
    Get.lazyPut(
      () => HomeService(Get.find()),
    );
  }
}
