import 'package:flutter/material.dart';
import 'package:gif_generator/resources/colors/app_theme_widget.dart';

class GifGenText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;

  const GifGenText(
    this.text, {
    super.key,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppThemeWidget.of(context);
    return Text(
      text,
      style: TextStyle(
        color: theme.adaptiveContrast,
      ),
      textAlign: textAlign,
    );
  }
}
