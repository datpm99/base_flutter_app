import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UIUtil {
  UIUtil._();

  static bool isTablet = false;

  static void setStatusBarTransparent(BuildContext context) {
    if (Platform.isIOS) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ));
    } else {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ));
    }
  }

  static Future<void> initScreen(BuildContext context) async {
    if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await DeviceInfoPlugin().iosInfo;
      isTablet = iosInfo.model.toLowerCase().contains('ipad');
    } else {
      isTablet = MediaQuery.of(context).size.shortestSide >= 600;
    }
  }

  static bool isHorizontal(BuildContext context) {
    return MediaQuery.of(context).size.width >
        MediaQuery.of(context).size.height;
  }

  static double width(double width) => width.w;
  static double height(double height) => height.h;
  static double radius(double radius) => radius.r;
  static double textSize(double fontSize) => fontSize.sp;
}
