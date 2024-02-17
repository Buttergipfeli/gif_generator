import 'package:flutter/material.dart';
import 'package:gif_generator/core/views/gif_gen_text.dart';
import 'package:gif_generator/core/views/platform/custom_patform_button.dart';

import 'package:gif_generator/features/home_screen/views/file_upload_field/file_upload_rect.dart';
import 'package:gif_generator/generated/l10n.dart';

class FileUploadField extends StatelessWidget {
  static const double _minSize = 200.0;
  static const double _maxSize = 250.0;
  static const double _borderRadius = 20.0;
  static const double _borderWidth = 2.0;
  static const double _spacing = 4.0;

  const FileUploadField({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = S.of(context);

    return LayoutBuilder(builder: (context, constraints) {
      final double size = constraints.maxWidth.clamp(_minSize, _maxSize);
      return Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GifGenText(localizations.fileUploadFieldFileUpload),
            const SizedBox(height: _spacing),
            CustomPlatformButton(
              onTap: () { },
              borderRadius: _borderRadius,
              child: FileUploadRect(
                size: size,
                borderRadius: _borderRadius,
                borderWidth: _borderWidth,
              ),
            ),
          ],
        ),
      );
    });
  }
}
