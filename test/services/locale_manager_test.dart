import 'package:dngtojpg_app/services/locale_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/in_memory_locale_storage.dart';

void main() {
  group('LocaleManager', () {
    test('loads stored locale if present', () async {
      final storage = InMemoryLocaleStorage(initialValue: 'ko');
      final manager = LocaleManager(
        fallbackLocale: const Locale('en'),
        storage: storage,
      );

      await manager.load();

      expect(manager.locale, const Locale('ko'));
    });

    test('updateLocale persists value and notifies listeners', () async {
      final storage = InMemoryLocaleStorage();
      final manager = LocaleManager(
        fallbackLocale: const Locale('en'),
        storage: storage,
      );

      var notified = false;
      manager.addListener(() {
        notified = true;
      });

      await manager.updateLocale(const Locale('ko'));

      expect(manager.locale, const Locale('ko'));
      expect(storage.storedValue, 'ko');
      expect(notified, isTrue);
    });
  });
}
