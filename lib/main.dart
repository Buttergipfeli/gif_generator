import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:gif_generator/features/home_screen/views/home_screen.dart';
import 'package:gif_generator/generated/l10n.dart';
import 'package:gif_generator/resources/colors/app_theme.dart';
import 'package:gif_generator/resources/colors/app_theme_widget.dart';
import 'package:gif_generator/setup/custom_theme_data.dart';
import 'package:gif_generator/setup/localization_delegates.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final localizationsDelegates = LocalizationDelegates();
    final customThemeData = CustomThemeData();

    return PlatformApp(
      localizationsDelegates: localizationsDelegates.delegates,
      supportedLocales: localizationsDelegates.supportedLocales,
      onGenerateTitle: (BuildContext context) => S.of(context).appTitle,
      material: customThemeData.materialAppData,
      cupertino: customThemeData.cupertinoAppData,
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) {
          final appTheme = AppTheme.theme(context);
          return AppThemeWidget(
            appTheme,
            child: const HomeScreen(),
          );
        },
      ),
    );
  }
}
