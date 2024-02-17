import 'package:flutter/material.dart';
import 'package:gif_generator/resources/colors/app_colors.dart';

class AppTheme {
  final Color lightGreen;
  final Color lightGreenAccent;
  final Color darkGreenAccent;
  final Color darkBlueAccent;
  final Color limeGreen;
  final Color adaptiveContrast;

  static AppTheme light = AppTheme._light();
  static AppTheme dark = AppTheme._dark();

  AppTheme._light()
      : lightGreen = AppColors.lightLightGreen,
        lightGreenAccent = AppColors.lightLightGreenAccent,
        darkGreenAccent = AppColors.lightDarkGreenAccent,
        darkBlueAccent = AppColors.lightDarkBlueAccent,
        limeGreen = AppColors.lightLimeGreen,
        adaptiveContrast = AppColors.lightAdaptiveContrast;

  AppTheme._dark()
      : lightGreen = AppColors.darkLightGreen,
        lightGreenAccent = AppColors.darkLightGreenAccent,
        darkGreenAccent = AppColors.darkDarkGreenAccent,
        darkBlueAccent = AppColors.darkDarkBlueAccent,
        limeGreen = AppColors.darkLimeGreen,
        adaptiveContrast = AppColors.darkAdaptiveContrast;

  static AppTheme theme(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light ? AppTheme.light : AppTheme.dark;
  }
}
