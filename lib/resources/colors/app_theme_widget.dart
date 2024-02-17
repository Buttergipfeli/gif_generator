import 'package:flutter/widgets.dart';
import 'package:gif_generator/resources/colors/app_theme.dart';

class AppThemeWidget extends InheritedWidget {
  final AppTheme appTheme;

  const AppThemeWidget(this.appTheme, {super.key, required super.child});

  @override
  bool updateShouldNotify(AppThemeWidget oldWidget) => appTheme != oldWidget.appTheme;

  static AppTheme of(BuildContext context) {
    final AppThemeWidget? result = context.dependOnInheritedWidgetOfExactType<AppThemeWidget>();
    assert(result != null, "No AppTheme found in context");
    return result!.appTheme;
  }
}
