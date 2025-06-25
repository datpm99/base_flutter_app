import 'package:base_flutter_app/languages/lang_controller.dart';
import 'package:base_flutter_app/themes/app_themes.dart';
import 'package:base_flutter_app/themes/app_typography.dart';
import 'package:base_flutter_app/themes/token_colors.dart';
import 'package:example/services/storage/app_storage_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Home'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            'key_test'.tr,
            style: AppTypography.textXLMedium(color: TokenColors.body),
          ),
          const SizedBox(height: 10),
          Text(
            'sign_in'.tr,
            style: AppTypography.textXLMedium(color: TokenColors.body),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  final lang = Get.find<LangController>();
                  lang.changeLang('vi', 'VN');
                },
                child: Text('Change VI'),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  final lang = Get.find<LangController>();
                  lang.changeLang('en', 'US');
                },
                child: Text('Change EN'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  AppThemes.changeTheme();
                  Future.delayed(Duration(milliseconds: 500), () {
                    setState(() {});
                  });
                },
                child: Text('Change theme'),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/setting');
            },
            child: Text('Setting'),
          ),
          const SizedBox(height: 20),
          Text(
            '${AppStorageService.readKey(AppStorageService.userName)}',
            style: AppTypography.textXLMedium(color: TokenColors.body),
          ),
          ElevatedButton(
            onPressed: () {
              AppStorageService.writeKey(AppStorageService.userName, 'Tester');
              setState(() {});
            },
            child: Text('Set value storage'),
          ),
        ],
      ),
    );
  }
}
