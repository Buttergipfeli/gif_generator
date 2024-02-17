import 'package:flutter/material.dart';
import 'package:gif_generator/resources/colors/app_theme_widget.dart';

class GifGenText extends StatelessWidget {
  final String text;

  const GifGenText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    final theme = AppThemeWidget.of(context);
    return Text(
      text,
      style: TextStyle(
        color: theme.adaptiveContrast,
      ),
    );
  }
}
