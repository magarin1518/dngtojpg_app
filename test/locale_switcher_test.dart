import 'package:dngtojpg_app/main.dart';
import 'package:dngtojpg_app/services/locale_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'helpers/in_memory_locale_storage.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('LocaleManager locale changes reflect in UI', (tester) async {
    final storage = InMemoryLocaleStorage(initialValue: 'ko');
    final manager = LocaleManager(
      fallbackLocale: const Locale('en'),
      storage: storage,
    );

    await manager.load();

    await tester.pumpWidget(DngToJpgApp(localeManager: manager));
    await tester.pump();

    expect(find.text('DNG 파일 변환을 시작해볼까요?'), findsOneWidget);

    await manager.updateLocale(const Locale('en'));
    await tester.pump();

    expect(find.text('Ready to convert your DNG files?'), findsOneWidget);
  });
}
