import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'widget_tester_extension.dart';

void main() {
  testWidgets('pumpLocalizedWidget 기본 로케일을 적용한다', (tester) async {
    await tester.pumpLocalizedWidget(
      Builder(
        builder: (context) =>
            Text(Localizations.localeOf(context).languageCode),
      ),
    );

    expect(find.text('en'), findsOneWidget);
  });

  testWidgets('pumpLocalizedWidget 지정한 로케일을 사용한다', (tester) async {
    await tester.pumpLocalizedWidget(
      const Text('안녕'),
      locale: const Locale('ko'),
    );

    expect(find.text('안녕'), findsOneWidget);
  });
}
