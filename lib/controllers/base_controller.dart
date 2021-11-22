import 'package:get/get.dart';
import 'package:getx_project/core/constants/translation_constants.dart';
import 'package:getx_project/core/enums/enums.dart';
import 'package:getx_project/core/utils/utils.dart';
import 'package:getx_project/services/api/app_error.dart';
import 'package:getx_project/views/widgets/custom_loading.dart';

class BaseController extends GetxController {
  final Rx<ApiStatus> _apiStatus = ApiStatus.init.obs;
  ApiStatus get apiStatus => _apiStatus.value;
  //TODO: show loading
  showLoading() {
    updateStatus(ApiStatus.loading);
    Get.dialog(
      const CustomLoading(),
      barrierDismissible: false,
    );
  }

  //TODO: hide loading
  hideLoading() {
    if (Get.isDialogOpen!) {
      Get.back();
    }
  }

  //TODO: update api status
  updateStatus(ApiStatus status) {
    _apiStatus(status);
  }

  //TODO: handle error exception
  handleErrorExceptions(AppError appError) {
    switch (appError.type) {
      case AppErrorType.noInternet:
        updateStatus(ApiStatus.noInternet);
        break;
      case AppErrorType.connectingTimeOut:
        Utils.showErrorMessage(TranslationConstants.connectingTimeOut);
        break;
      default:
        updateStatus(ApiStatus.init);
        Utils.showErrorMessage(TranslationConstants.someThingWrong);
    }
  }
}
