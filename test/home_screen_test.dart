import 'package:dngtojpg_app/main.dart';
import 'package:dngtojpg_app/services/locale_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'helpers/in_memory_locale_storage.dart';

Future<void> _pumpHomeApp(WidgetTester tester,
    {String? initialLocaleCode}) async {
  final manager = LocaleManager(
    fallbackLocale: const Locale('en'),
    storage: InMemoryLocaleStorage(initialValue: initialLocaleCode),
  );

  await manager.load();
  await tester.pumpWidget(DngToJpgApp(localeManager: manager));
  await tester.pump();
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('renders headline, description, CTAs, and progress card',
      (tester) async {
    await _pumpHomeApp(tester);

    expect(find.text('Ready to convert your DNG files?'), findsOneWidget);
    expect(
      find.text('Choose your RAW images to review settings before conversion.'),
      findsOneWidget,
    );
    expect(find.text('Pick DNG files'), findsOneWidget);
    expect(find.text('Convert to JPG'), findsOneWidget);
    expect(find.text('Conversion queue'), findsOneWidget);
    expect(find.text('Waiting for files to start conversion'), findsOneWidget);
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });
}
