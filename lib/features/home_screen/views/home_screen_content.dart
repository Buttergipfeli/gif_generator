import 'package:flutter/material.dart';
import 'package:gif_generator/features/home_screen/views/file_output/file_output.dart';

import 'file_upload/file_upload_field.dart';

class HomeScreenContent extends StatelessWidget {
  static const double _minSize = 200.0;
  static const double _maxSize = 250.0;
  static const double _spacing = 16.0;

  const HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double size = constraints.maxWidth.clamp(_minSize, _maxSize);
        return Center(
          child: Column(
            children: [
              FileUploadField(size: size),
              const SizedBox(height: _spacing),
              FileOutput(size: size),
            ],
          ),
        );
      },
    );
  }
}
