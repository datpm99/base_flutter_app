import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'en_us.dart';
import 'vi_vn.dart';

class TranslationService extends Translations {
  final Map<String, String> langEn;
  final Map<String, String> langVi;
  static const fallbackLocale = Locale('vi', 'VN');

  TranslationService({required this.langEn, required this.langVi});

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {...langEnDefault, ...langEn},
        'vi_VN': {...langViDefault, ...langVi},
      };
}
