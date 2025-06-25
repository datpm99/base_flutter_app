import 'package:base_flutter_app/base_flutter_app.dart';
import 'package:example/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'constants/app_config.dart';
import 'my_app.dart';

void logout() {
  final storage = Get.find<StorageService>();
  storage.accessToken = '';
  Get.offAllNamed(Routes.login);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize firebase crashlytics.
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // FirebaseCrashlyticsService().init();
  await AppServices.init(AppConfig.domain, logout);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.light,
  ));
  runApp(MyApp());
}
