import 'package:careerfix/app/core/constants/colors/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle whiteText(double fontSize, FontWeight fontWeight) {
    return TextStyle(
      fontFamily: 'Calibri',
      fontSize: fontSize,
      color: AppColors.whiteColor,
      fontWeight: fontWeight,
    );
  }

  static TextStyle mainColorText(double fontSize, FontWeight fontWeight) {
    return TextStyle(
      fontFamily: 'Calibri',
      fontSize: fontSize,
      color: AppColors.mainColor,
      fontWeight: fontWeight,
    );
  }

  static TextStyle blackColorText(double fontSize, FontWeight fontWeight) {
    return TextStyle(
      fontFamily: 'Calibri',
      fontSize: fontSize,
      color: AppColors.blackColor,
      fontWeight: fontWeight,
    );
  }
}
