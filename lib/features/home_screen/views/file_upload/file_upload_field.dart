import 'package:flutter/material.dart';
import 'package:gif_generator/core/views/gif_gen_text.dart';

import 'package:gif_generator/features/home_screen/views/file_upload/file_upload_rect.dart';
import 'package:gif_generator/generated/l10n.dart';

class FileUploadField extends StatelessWidget {
  static const double _spacing = 4.0;

  final double size;

  const FileUploadField({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    final localizations = S.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GifGenText(localizations.fileUploadFieldFileUpload),
        const SizedBox(height: _spacing),
        FileUploadRect(size: size)
      ],
    );
  }
}
