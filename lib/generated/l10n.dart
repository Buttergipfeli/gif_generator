// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Gif converter`
  String get appTitle {
    return Intl.message(
      'Gif converter',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `Gif converter`
  String get homeScreenTitle {
    return Intl.message(
      'Gif converter',
      name: 'homeScreenTitle',
      desc: '',
      args: [],
    );
  }

  /// `Upload file`
  String get fileUploadFieldFileUpload {
    return Intl.message(
      'Upload file',
      name: 'fileUploadFieldFileUpload',
      desc: '',
      args: [],
    );
  }

  /// `Select source`
  String get fileUploadRectModalSelectSource {
    return Intl.message(
      'Select source',
      name: 'fileUploadRectModalSelectSource',
      desc: '',
      args: [],
    );
  }

  /// `Images`
  String get fileUploadRectModalSelectSourceImageExplorer {
    return Intl.message(
      'Images',
      name: 'fileUploadRectModalSelectSourceImageExplorer',
      desc: '',
      args: [],
    );
  }

  /// `Files`
  String get fileUploadRectModalSelectSourceFileExplorer {
    return Intl.message(
      'Files',
      name: 'fileUploadRectModalSelectSourceFileExplorer',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get fileUploadRectModalSelectSourceCancel {
    return Intl.message(
      'Cancel',
      name: 'fileUploadRectModalSelectSourceCancel',
      desc: '',
      args: [],
    );
  }

  /// `Gif output`
  String get fileOutputGifOutput {
    return Intl.message(
      'Gif output',
      name: 'fileOutputGifOutput',
      desc: '',
      args: [],
    );
  }

  /// `Upload a file to see the output.`
  String get fileOutputPlaceholderInstruction {
    return Intl.message(
      'Upload a file to see the output.',
      name: 'fileOutputPlaceholderInstruction',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'de'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
