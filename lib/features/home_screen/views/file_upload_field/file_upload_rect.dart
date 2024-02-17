import 'package:flutter/material.dart';
import 'package:gif_generator/core/views/plus_view.dart';
import 'package:gif_generator/resources/colors/app_theme_widget.dart';

class FileUploadRect extends StatelessWidget {
  static const double _minSize = 200.0;
  static const double _maxSize = 250.0;
  static const double _borderRadius = 20.0;
  static const double _borderWidth = 2.0;
  static const double _plusIconScale = 3.5;

  const FileUploadRect({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final theme = AppThemeWidget.of(context);
          final double size = constraints.maxWidth.clamp(_minSize, _maxSize);

          return Container(
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
          );
        },
      ),
    );
  }
}
