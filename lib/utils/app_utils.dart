import 'dart:math';

import 'package:base_flutter_app/services/storage_service.dart';
import 'package:base_flutter_app/themes/app_typography.dart';
import 'package:base_flutter_app/themes/effect_styles.dart';
import 'package:base_flutter_app/widgets/layout/loader_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class AppUtils {
  static final storage = Get.find<StorageService>();
  static final logger = Logger();
  static final loggerNoStack = Logger(printer: PrettyPrinter(methodCount: 0));

  /// System.
  static Future<void> hideLoader() async {
    if (Get.isDialogOpen!) Get.back();
  }

  static Future<void> showLoader() async {
    Get.dialog(
      const Center(child: LoaderCircular()),
      barrierDismissible: false,
    );
  }

  static void showLogDebug(String msg) {
    loggerNoStack.d(msg);
  }

  static void showLogInfo(String msg) {
    loggerNoStack.d(msg);
  }

  static void showLogWarning(String msg) {
    loggerNoStack.w(msg);
  }

  static void showLogError(String msg) {
    logger.e(msg);
  }

  static String getPlatForm() {
    if (GetPlatform.isAndroid) return 'ANDROID';
    if (GetPlatform.isIOS) return 'IOS';
    return 'WEB';
  }

  static void showError(String message, {bool isClose = true}) {
    if (Get.isDialogOpen! && isClose) Get.back();
    Get.snackbar(
      'error'.tr,
      message,
      borderWidth: 0,
      borderRadius: 4,
      overlayBlur: .1,
      overlayColor: Colors.black26,
      backgroundColor: Colors.white,
      animationDuration: 0.45.seconds,
      reverseAnimationCurve: Curves.easeOutExpo,
      forwardAnimationCurve: Curves.fastLinearToSlowEaseIn,
      margin: EdgeInsets.zero,
      snackStyle: SnackStyle.FLOATING,
      snackPosition: SnackPosition.TOP,
      padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 16),
      maxWidth: Get.width - 32,
      titleText: const SizedBox.shrink(),
      boxShadows: EffectStyles.boxShadow(),
      messageText: Padding(
        padding: const EdgeInsets.only(bottom: 6),
        child: Row(
          children: [
            SvgPicture.asset('assets/icons/ic_error.svg'),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                message,
                style: AppTypography.textLGMedium(color: Color(0xffff9781)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static void showSuccess(String message, {bool isClose = true}) {
    if (Get.isDialogOpen! && isClose) Get.back();
    Get.snackbar(
      'success'.tr,
      message,
      borderWidth: 0,
      borderRadius: 4,
      backgroundColor: Color(0xff46B450),
      animationDuration: 0.45.seconds,
      overlayBlur: .1,
      overlayColor: Colors.black26,
      forwardAnimationCurve: Curves.fastLinearToSlowEaseIn,
      reverseAnimationCurve: Curves.easeOutExpo,
      snackStyle: SnackStyle.FLOATING,
      snackPosition: SnackPosition.TOP,
      margin: EdgeInsets.zero,
      maxWidth: Get.width - 32,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      titleText: const SizedBox.shrink(),
      messageText: Padding(
        padding: const EdgeInsets.only(bottom: 6),
        child: Row(
          children: [
            SvgPicture.asset('assets/icons/ic_check_circle.svg'),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                message,
                style: AppTypography.textLGMedium(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// File.
  static String getFileSize(int fileSize, {int round = 0}) {
    if (fileSize <= 0) return "0B";
    const suffixes = ["B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"];
    var i = (log(fileSize) / log(1024)).floor();
    return ((fileSize / pow(1024, i)).toStringAsFixed(round)) + suffixes[i];
  }

  /// Format by 0979560***.
  static String maskPhone(String phone) {
    if (phone.isEmpty) return '';
    if (phone.length > 6) phone = '${phone.substring(0, 7)}***';
    return phone;
  }

  /// Utils.
  static String getFirstCharacter(String name) {
    if (name.isEmpty) return '';
    name = name.trim();
    String lastWord = name.substring(name.lastIndexOf(" ") + 1);
    return lastWord[0].toUpperCase();
  }
}
