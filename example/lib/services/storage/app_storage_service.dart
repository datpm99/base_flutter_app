import 'package:base_flutter_app/base_flutter_app.dart';
import 'package:get/get.dart';

class AppStorageService {
  // Keys.
  static const String userName = 'user_name';

  static dynamic readKey(String key) {
    final storage = Get.find<StorageService>();
    return storage.box.read(key) ?? '';
  }

  static void writeKey<T>(String key, T value) {
    final storage = Get.find<StorageService>();
    value == null ? storage.box.remove(key) : storage.box.write(key, value);
  }
}
