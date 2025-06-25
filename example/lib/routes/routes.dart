import 'package:example/pages/home/home_binding.dart';
import 'package:example/pages/home/home_view.dart';
import 'package:example/pages/setting/setting_binding.dart';
import 'package:example/pages/setting/setting_view.dart';
import 'package:get/get.dart';

class Routes {
  static const login = '/login';
  static const home = '/home';
  static const setting = '/setting';
}

class AppPages {
  static String getInitPage() {
    return Routes.home;
  }

  static final routes = [
    GetPage(
      name: Routes.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.setting,
      page: () => const SettingView(),
      binding: SettingBinding(),
    ),
  ];
}
