// ignore_for_file: avoid_print
import 'package:getx_project/controllers/base_controller.dart';
import 'package:getx_project/core/enums/enums.dart';
import 'package:getx_project/services/remote/home_service.dart';

class HomeController extends BaseController {
  final HomeService _homeService;
  int count = 0;

  HomeController(this._homeService);

  @override
  onReady() {
    super.onReady();
    getHomeData();
  }

  updateCount() {
    count = 20;
    update();
  }

  Future getHomeData({String keyword = ''}) async {
    showLoading();
    final response = await _homeService.fetchHomeData(keyword);
    hideLoading();
    response.fold(
      (appError) => handleErrorExceptions(appError),
      (data) {
        if (data.message) {
          count = data.data.lastItems.length;
        } else {
          count = 10;
        }
        updateStatus(ApiStatus.success);
      },
    );
  }
}
