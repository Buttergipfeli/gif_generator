import 'package:flutter/material.dart';
import 'package:gif_generator/features/home_screen/views/file_upload_field/file_upload_rect.dart';

class FileUploadField extends StatelessWidget {
  const FileUploadField({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        FileUploadRect(),
      ],
    );
  }
}
