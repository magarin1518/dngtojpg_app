import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleManager extends ChangeNotifier {
  LocaleManager({
    required Locale fallbackLocale,
    required LocaleStorage storage,
    Iterable<Locale>? supportedLocales,
  })  : _fallbackLocale = fallbackLocale,
        _storage = storage,
        supportedLocales = List<Locale>.unmodifiable(
          supportedLocales ?? const [Locale('en'), Locale('ko')],
        ),
        _locale = fallbackLocale;

  final LocaleStorage _storage;
  final Locale _fallbackLocale;
  Locale _locale;
  final List<Locale> supportedLocales;
  bool _initialized = false;

  Locale get locale => _locale;

  Future<void> load() async {
    if (_initialized) {
      return;
    }

    final storedTag = await _storage.readLocaleCode();
    if (storedTag != null && storedTag.isNotEmpty) {
      final candidate = _parseLocale(storedTag);
      if (_isSupported(candidate)) {
        _locale = candidate;
      }
    }

    _initialized = true;
  }

  Future<void> updateLocale(Locale locale) async {
    if (!_isSupported(locale)) {
      throw ArgumentError.value(locale, 'locale', 'Unsupported locale');
    }

    if (_locale == locale) {
      return;
    }

    _locale = locale;
    await _storage.writeLocaleCode(locale.toLanguageTag());
    notifyListeners();
  }

  bool _isSupported(Locale locale) {
    return supportedLocales.any(
      (supported) =>
          supported.languageCode == locale.languageCode &&
          (supported.countryCode == null ||
              supported.countryCode!.isEmpty ||
              supported.countryCode == locale.countryCode),
    );
  }

  Locale _parseLocale(String tag) {
    final segments = tag.split(RegExp('[-_]'));
    if (segments.isEmpty) {
      return _fallbackLocale;
    }

    if (segments.length == 1) {
      return Locale(segments.first);
    }

    return Locale(segments[0], segments[1]);
  }

  static Future<LocaleManager> create({
    Locale fallbackLocale = const Locale('en'),
    Iterable<Locale>? supportedLocales,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    final storage = _SharedPreferencesLocaleStorage(prefs);
    final manager = LocaleManager(
      fallbackLocale: fallbackLocale,
      storage: storage,
      supportedLocales: supportedLocales,
    );
    await manager.load();
    return manager;
  }
}

abstract class LocaleStorage {
  Future<String?> readLocaleCode();
  Future<void> writeLocaleCode(String languageTag);
}

class _SharedPreferencesLocaleStorage implements LocaleStorage {
  _SharedPreferencesLocaleStorage(this._prefs);

  final SharedPreferences _prefs;
  static const _localeKey = 'locale_code';

  @override
  Future<String?> readLocaleCode() async => _prefs.getString(_localeKey);

  @override
  Future<void> writeLocaleCode(String languageTag) async {
    await _prefs.setString(_localeKey, languageTag);
  }
}
