import 'package:flutter/material.dart';
import 'package:gif_generator/core/views/gif_gen_text.dart';
import 'package:gif_generator/resources/colors/app_theme_widget.dart';

import '../../../../generated/l10n.dart';

class FileOutputPlaceholder extends StatelessWidget {
  static const double _iconScale = 3.5;
  static const double _padding = 16.0;

  final double size;

  const FileOutputPlaceholder({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    final theme = AppThemeWidget.of(context);
    final localizations = S.of(context);

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(_padding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.image_outlined,
              size: size / _iconScale,
              color: theme.adaptiveContrast,
            ),
            GifGenText(
              localizations.fileOutputPlaceholderInstruction,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
