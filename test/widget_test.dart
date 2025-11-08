// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:dngtojpg_app/main.dart';
import 'package:dngtojpg_app/services/locale_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'helpers/in_memory_locale_storage.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('HomeScreen placeholder UI is rendered', (tester) async {
    final manager = LocaleManager(
      fallbackLocale: const Locale('en'),
      storage: InMemoryLocaleStorage(),
    );

    await manager.load();

    await tester.pumpWidget(DngToJpgApp(localeManager: manager));

    expect(find.text('DNG to JPG Converter'), findsOneWidget);
    expect(find.text('File selection coming soon'), findsOneWidget);
  });
}
