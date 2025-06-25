import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/languages/lang_controller.dart';
import '/services/storage_service.dart';
import 'api_service.dart';

class AppServices {
  static Future<void> init(String domain, VoidCallback logout) async {
    await Get.put(StorageService()).init();
    await Get.put(ApiService()).init(domain, logout);
    Get.put(LangController());
  }
}
