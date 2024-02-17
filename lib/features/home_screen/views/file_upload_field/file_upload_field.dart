import 'package:flutter/material.dart';
import 'package:gif_generator/features/home_screen/views/file_upload_field/file_upload_rect.dart';
import 'package:gif_generator/generated/l10n.dart';

class FileUploadField extends StatelessWidget {
  static const double _spacing = 4.0;

  const FileUploadField({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = S.of(context);
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(localizations.fileUploadFieldFileUpload),
          const SizedBox(height: _spacing),
          const FileUploadRect(),
        ],
      ),
    );
  }
}
