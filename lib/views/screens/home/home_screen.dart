import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/controllers/home_controller.dart';
import 'package:getx_project/core/enums/enums.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () {
          if (controller.apiStatus == ApiStatus.noInternet) {
            return const Center(
              child: Text('no internet'),
            );
          } else if (controller.apiStatus == ApiStatus.success) {
            return Center(
              child: ElevatedButton(
                onPressed: () {
                  controller.updateCount();
                },
                child: GetBuilder<HomeController>(
                  builder: (_) => Text(
                    controller.count.toString(),
                  ),
                ),
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
