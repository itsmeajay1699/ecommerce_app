import 'package:get_storage/get_storage.dart';

class TLocalStorage {
  static final TLocalStorage _instance =
      TLocalStorage._internal(); // Singleton instance

  factory TLocalStorage() => _instance; // Factory constructor

  TLocalStorage._internal(); // Private constructor

  final _storage = GetStorage();

  // generic method to save data

  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  // generic method to get value

  T? getData<T>(String key) {
    return _storage.read(key);
  }

  // generic method to remove value

  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // generic method to clear all data

  Future<void> clearAllData() async {
    await _storage.erase();
  }
}
