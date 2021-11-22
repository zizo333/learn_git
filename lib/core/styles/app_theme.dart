import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_theme.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData get lightTheme => ThemeData(
        primaryColor: AppColors.primaryColor,
        canvasColor: AppColors.canvasColor,
        hintColor: AppColors.greyColor.withOpacity(0.2),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: AppColors.primaryColor,
        ),
        colorScheme: const ColorScheme.light(),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
        ),
        textTheme: AppTextTheme.lightTheme,
        fontFamily: 'Cairo',
      );
}
