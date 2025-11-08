import 'package:dngtojpg_app/services/locale_manager.dart';

class InMemoryLocaleStorage implements LocaleStorage {
  InMemoryLocaleStorage({String? initialValue}) : _value = initialValue;

  String? _value;

  String? get storedValue => _value;

  @override
  Future<String?> readLocaleCode() async => _value;

  @override
  Future<void> writeLocaleCode(String languageTag) async {
    _value = languageTag;
  }
}
