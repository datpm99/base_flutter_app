import 'package:base_flutter_app/base_flutter_app.dart';
import 'package:example/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import 'constants/app_config.dart';
import 'languages/en_us.dart';
import 'languages/vi_vn.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final lang = Get.find<LangController>();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('vi'), Locale('en')],
      enableLog: true,
      debugShowCheckedModeBanner: false,
      color: AppThemes.primaryColor,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      title: AppConfig.appName,
      getPages: AppPages.routes,
      builder: MyRootWidget.builder,
      initialRoute: AppPages.getInitPage(),
      locale: lang.locale,
      translations: TranslationService(langEn: langEn, langVi: langVi),
      fallbackLocale: TranslationService.fallbackLocale,
      defaultTransition: Transition.fadeIn,
    );
  }
}
