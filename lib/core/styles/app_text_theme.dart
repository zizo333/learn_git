import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';

class AppTextTheme {
  const AppTextTheme._();

  static TextTheme get lightTheme => const TextTheme(
        headline1: TextStyle(color: AppColors.primaryColor),
        headline2: TextStyle(color: AppColors.secondaryColor),
        headline3: TextStyle(color: AppColors.greyColor),
        headline4: TextStyle(color: AppColors.textFieldColor),
        button: TextStyle(color: Colors.white),
      );
}

extension TextThemeExtension on TextTheme {
  TextStyle? get textSB_16 => headline2?.copyWith(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
      );
  TextStyle? get textWB_16 => button?.copyWith(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
      );
  TextStyle? get textGreyN_14 => headline3?.copyWith(fontSize: 14.sp);
  TextStyle? get textPrN_16 => headline1?.copyWith(fontSize: 16.sp);
  TextStyle? get textPrN_14 => headline1?.copyWith(fontSize: 14.sp);
  TextStyle? get textSB_18 =>
      headline2?.copyWith(fontSize: 18.sp, fontWeight: FontWeight.bold);
  TextStyle? get textPrB_18 =>
      headline1?.copyWith(fontSize: 18.sp, fontWeight: FontWeight.bold);
}
