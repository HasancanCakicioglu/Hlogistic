import 'package:shared_preferences/shared_preferences.dart';
import '../../constants/enum/local_enums.dart';

class LocaleManager {
  static final LocaleManager _instance = LocaleManager._init();

  SharedPreferences? _preferences;
  static LocaleManager get instance => _instance;

  LocaleManager._init() {
    SharedPreferences.getInstance().then((value) {
      _preferences = value;
    });
  }
  static Future prefrencesInit() async {
    instance._preferences ??= await SharedPreferences.getInstance();
  }

  Future<void> clearAll() async {
    await _preferences!.clear();
  }

  Future<void> clearAllSaveFirst() async {
    if (_preferences != null) {
      await _preferences!.clear();
      await setBoolValue(SharedPreferencesKeys.isFirstApp, true);
    }
  }

  Future<void> setStringValue(SharedPreferencesKeys key, String value) async {
    await _preferences!.setString(key.toString(), value);
  }

  Future<void> setBoolValue(SharedPreferencesKeys key, bool value) async {
    await _preferences!.setBool(key.toString(), value);
  }

  Future<void> setIntValue(SharedPreferencesKeys key, int value) async {
    await _preferences!.setInt(key.toString(), value);
  }

  String getStringValue(SharedPreferencesKeys key) =>
      _preferences?.getString(key.toString()) ?? '';

  bool getBoolValue(SharedPreferencesKeys key) =>
      _preferences!.getBool(key.toString()) ?? false;

  int? getIntValue(SharedPreferencesKeys key) =>
      _preferences!.getInt(key.toString());
}
