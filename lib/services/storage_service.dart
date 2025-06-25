import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class StorageService extends GetxService {
  static StorageService get() => Get.find();

  late GetStorage box;
  late bool _isFirstLaunch;

  Future<void> init() async {
    box = GetStorage('settings');
    await box.initStorage;

    _isFirstLaunch = box.read(_Keys.firstLaunch) ?? true;
    if (_isFirstLaunch) {
      box.write(_Keys.firstLaunch, false);
      language = 'vi_VN';
    }
  }

  void reset() => box.erase();

  void write<T>(String key, T value) {
    value == null ? box.remove(key) : box.write(key, value);
  }

  //Base.
  bool get firstLaunch => _isFirstLaunch;

  String get language => box.read(_Keys.language) ?? 'vi_VN';
  set language(String value) => write(_Keys.language, value);

  //Auth.
  String get accessToken => box.read(_Keys.accessToken) ?? '';
  set accessToken(String value) => write(_Keys.accessToken, value);

}

abstract class _Keys {
  //Base.
  static const String firstLaunch = 'first_launch';
  static const String language = 'language';

  //Auth.
  static const String accessToken = 'access_token';
}
