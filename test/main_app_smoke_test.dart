import 'package:dngtojpg_app/main.dart';
import 'package:dngtojpg_app/services/locale_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'helpers/in_memory_locale_storage.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('앱이 MaterialApp과 HomeScreen을 로드한다', (tester) async {
    final manager = LocaleManager(
      fallbackLocale: const Locale('en'),
      storage: InMemoryLocaleStorage(),
    );

    await manager.load();

    await tester.pumpWidget(DngToJpgApp(localeManager: manager));

    expect(find.byType(MaterialApp), findsOneWidget);
    expect(find.text('DNG to JPG Converter'), findsOneWidget);
    expect(find.text('Ready to convert your DNG files?'), findsOneWidget);
  });
}
