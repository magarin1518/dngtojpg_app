import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension WidgetTesterLocalized on WidgetTester {
  Future<void> pumpLocalizedWidget(
    Widget widget, {
    Locale? locale,
    Iterable<Locale> supportedLocales = const [Locale('en'), Locale('ko')],
  }) async {
    await pumpWidget(
      MaterialApp(
        locale: locale,
        supportedLocales: supportedLocales,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        home: widget,
      ),
    );

    await pumpAndSettle();
  }
}
