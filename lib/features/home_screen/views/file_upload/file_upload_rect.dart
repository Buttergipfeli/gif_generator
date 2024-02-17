import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:gif_generator/core/views/platform/custom_patform_button.dart';
import 'package:gif_generator/core/views/plus_view.dart';
import 'package:gif_generator/resources/colors/app_theme_widget.dart';

import '../../../../generated/l10n.dart';

class FileUploadRect extends StatelessWidget {
  static const double _plusIconScale = 3.5;
  static const double _borderRadius = 6.0;
  static const double _borderWidth = 2.0;

  final double size;
  final VoidCallback onPickImage;
  final VoidCallback onPickFile;

  const FileUploadRect({
    super.key,
    required this.size,
    required this.onPickImage,
    required this.onPickFile,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppThemeWidget.of(context);
    final localizations = S.of(context);

    return CustomPlatformButton(
      onTap: () async {
        _showPlatformModalSheet(context, localizations);
      },
      borderRadius: _borderRadius,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: theme.adaptiveContrast,
            width: _borderWidth,
          ),
          borderRadius: BorderRadius.circular(_borderRadius),
        ),
        child: Center(
          child: PlusView(
            size: size / _plusIconScale,
            weight: _borderWidth,
            color: theme.adaptiveContrast,
          ),
        ),
      ),
    );
  }

  void _showPlatformModalSheet(BuildContext context, S localizations) {
    final String descriptionText = localizations.fileUploadRectModalSelectSource;
    final String photoLibraryText = localizations.fileUploadRectModalSelectSourceImageExplorer;
    final String fileExplorerText = localizations.fileUploadRectModalSelectSourceFileExplorer;
    final String cancelText = localizations.fileUploadRectModalSelectSourceCancel;

    showPlatformModalSheet(
      context: context,
      builder: (_) => PlatformWidget(
        material: (_, __) => _MaterialActionSheet(
          photoLibraryText,
          fileExplorerText,
          onPickImage,
          onPickFile,
        ),
        cupertino: (_, __) => _CupertinoActionSheet(
          descriptionText,
          photoLibraryText,
          fileExplorerText,
          cancelText,
          onPickImage,
          onPickFile,
        ),
      ),
    );
  }
}

class _MaterialActionSheet extends StatelessWidget {
  final String photoLibraryText;
  final String fileExplorerText;
  final VoidCallback onPickImage;
  final VoidCallback onPickFile;

  const _MaterialActionSheet(
    this.photoLibraryText,
    this.fileExplorerText,
    this.onPickImage,
    this.onPickFile,
  );

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        ListTile(
          leading: const Icon(Icons.photo_library),
          title: Text(photoLibraryText),
          onTap: () {
            onPickImage();
            Navigator.of(context).pop();
          },
        ),
        ListTile(
          leading: const Icon(Icons.folder_open),
          title: Text(fileExplorerText),
          onTap: () {
            onPickFile();
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

class _CupertinoActionSheet extends StatelessWidget {
  final String descriptionText;
  final String photoLibraryText;
  final String fileExplorerText;
  final String cancelText;
  final VoidCallback onPickImage;
  final VoidCallback onPickFile;

  const _CupertinoActionSheet(
    this.descriptionText,
    this.photoLibraryText,
    this.fileExplorerText,
    this.cancelText,
    this.onPickImage,
    this.onPickFile,
  );

  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      title: Text(descriptionText),
      actions: [
        CupertinoActionSheetAction(
          child: Text(photoLibraryText),
          onPressed: () {
            onPickImage();
            Navigator.of(context).pop();
          },
        ),
        CupertinoActionSheetAction(
          child: Text(fileExplorerText),
          onPressed: () {
            onPickFile();
            Navigator.of(context).pop();
          },
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        child: Text(cancelText),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }
}
