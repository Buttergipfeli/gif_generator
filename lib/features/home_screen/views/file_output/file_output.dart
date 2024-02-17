import 'package:flutter/material.dart';
import 'package:gif_generator/features/home_screen/views/file_output/file_output_placeholder.dart';
import 'package:gif_generator/resources/colors/app_theme_widget.dart';

import '../../../../core/views/gif_gen_text.dart';
import '../../../../generated/l10n.dart';
import '../../../../resources/colors/app_theme.dart';

class FileOutput extends StatelessWidget {
  static const double _borderRadius = 6.0;
  static const double _borderWidth = 2.0;
  static const double _textSpacing = 4.0;

  final double size;

  const FileOutput({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    final theme = AppThemeWidget.of(context);
    final localizations = S.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GifGenText(localizations.fileOutputGifOutput),
        const SizedBox(height: _textSpacing),
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(_borderRadius),
            border: _border(theme),
          ),
          child: FileOutputPlaceholder(size: size),
        ),
      ],
    );
  }

  BoxBorder _border(AppTheme theme) {
    return Border.all(
      color: theme.adaptiveContrast,
      width: _borderWidth,
    );
  }
}
