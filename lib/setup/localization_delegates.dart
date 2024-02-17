import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:gif_generator/generated/l10n.dart';
import 'package:flutter/widgets.dart';

class LocalizationDelegates {
  final Iterable<LocalizationsDelegate<dynamic>> delegates = [
    S.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  final Iterable<Locale> supportedLocales = S.delegate.supportedLocales;
}
