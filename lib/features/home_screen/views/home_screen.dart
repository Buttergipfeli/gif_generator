import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:gif_generator/features/home_screen/views/file_upload_field/file_upload_field.dart';
import 'package:gif_generator/generated/l10n.dart';
import 'package:gif_generator/resources/colors/app_theme_widget.dart';

class HomeScreen extends StatelessWidget {
  static const double _padding = 16.0;

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = AppThemeWidget.of(context);
    final localizations = S.of(context);
    return PlatformScaffold(
      backgroundColor: appTheme.backgroundColor,
      appBar: PlatformAppBar(
        title: Text(localizations.homeScreenTitle),
        backgroundColor: appTheme.limeGreen,
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(_padding),
          child: Column(
            children: [
              FileUploadField(),
            ],
          ),
        ),
      ),
    );
  }
}
