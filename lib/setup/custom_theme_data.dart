import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:gif_generator/resources/colors/app_theme.dart';

class CustomThemeData {
  MaterialAppData materialAppData(BuildContext context, PlatformTarget target) {
    return MaterialAppData(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppTheme.theme(context).limeGreen),
        useMaterial3: true,
      ),
    );
  }

  CupertinoAppData cupertinoAppData(BuildContext context, PlatformTarget target) {
    return CupertinoAppData(
      theme: CupertinoThemeData(
        primaryColor: AppTheme.theme(context).limeGreen,
      ),
    );
  }
}
