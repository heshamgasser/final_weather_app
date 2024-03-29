import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';
import 'app_text.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
        toolbarHeight: 100.h,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50.r),
            bottomRight: Radius.circular(50.r),
          ),
        ),
        centerTitle: true,
        color: AppColors.appBarColor),
    iconButtonTheme: IconButtonThemeData(
      style:
          IconButton.styleFrom(foregroundColor: Colors.white, iconSize: 30.r),
    ),
    iconTheme: IconThemeData(
      size: 30.r,
      color: Colors.white,
    ),
    textTheme: TextTheme(
      titleLarge: AppText.titleLarge,
      // titleMedium:,
      // titleSmall:,
      //
      // displayLarge:,
      // displayMedium:,
      // displaySmall:,
      //
      // labelLarge:,
      labelMedium: AppText.labelMedium,
      labelSmall: AppText.labelSmall,
      //
      bodyLarge: AppText.bodyLarge,
      bodyMedium: AppText.bodyMedium,
      bodySmall: AppText.bodySmall,
      //
      // headlineLarge:,
      // headlineMedium:,
      // headlineSmall:,
    ),
  );
}
