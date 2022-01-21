import 'package:flutter/material.dart';
import 'package:molly/colors/app_colors.dart';

class CustomTheme{
  static const appColors = AppColors();

  CustomTheme._();

  static ThemeData get lightTheme {
      return ThemeData(
        primaryColor: appColors.primaryColor,
        colorScheme: ThemeData().colorScheme.copyWith(secondary: appColors.secondaryColor),
        fontFamily: "Ubuntu",
        
      );
  }
}