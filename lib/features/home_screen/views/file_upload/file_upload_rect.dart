import 'package:flutter/material.dart';
import 'package:gif_generator/core/views/platform/custom_patform_button.dart';
import 'package:gif_generator/core/views/plus_view.dart';
import 'package:gif_generator/resources/colors/app_theme_widget.dart';

class FileUploadRect extends StatelessWidget {
  static const double _plusIconScale = 3.5;
  static const double _borderRadius = 6.0;
  static const double _borderWidth = 2.0;

  final double size;

  const FileUploadRect({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    final theme = AppThemeWidget.of(context);

    return CustomPlatformButton(
      onTap: () { },
      borderRadius: _borderRadius,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: theme.adaptiveContrast,
            width: _borderWidth,
          ),
          borderRadius: BorderRadius.circular(_borderRadius),
        ),
        child: Center(
          child: PlusView(
            size: size / _plusIconScale,
            weight: _borderWidth,
            color: theme.adaptiveContrast,
          ),
        ),
      ),
    );
  }
}
