import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:getx_project/core/styles/app_colors.dart';

class Utils {
  const Utils._();

  static showErrorMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColors.primaryColor,
      fontSize: 14.sp,
    );
  }
}
