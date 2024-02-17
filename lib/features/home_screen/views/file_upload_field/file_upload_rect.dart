import 'package:flutter/material.dart';
import 'package:gif_generator/core/views/plus_view.dart';
import 'package:gif_generator/resources/colors/app_theme_widget.dart';

class FileUploadRect extends StatelessWidget {
  static const double _plusIconScale = 3.5;

  final double size;
  final double borderWidth;
  final double borderRadius;

  const FileUploadRect({
    super.key,
    required this.size,
    required this.borderWidth,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppThemeWidget.of(context);

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: theme.adaptiveContrast,
          width: borderWidth,
        ),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Center(
        child: PlusView(
          size: size / _plusIconScale,
          weight: borderWidth,
          color: theme.adaptiveContrast,
        ),
      ),
    );
  }
}
