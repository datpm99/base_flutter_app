import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  static TextStyle _base({
    required double fontSize,
    required FontWeight fontWeight,
    Color color = Colors.black,
    double? height,
    double? letterSpacing,
  }) {
    return GoogleFonts.inter(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      height: height,
      letterSpacing: letterSpacing,
    );
  }

  // CustomStyle.
  static TextStyle customStyle({
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.w400,
    Color color = Colors.black,
    double? height,
    double? letterSpacing,
  }) =>
      _base(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        height: height,
        letterSpacing: letterSpacing,
      );

  // Headline XXL
  static TextStyle headlineXXLRegular({Color color = Colors.black}) =>
      _base(fontSize: 72, fontWeight: FontWeight.w400, color: color);
  static TextStyle headlineXXLMedium({Color color = Colors.black}) =>
      _base(fontSize: 72, fontWeight: FontWeight.w500, color: color);
  static TextStyle headlineXXLSemibold({Color color = Colors.black}) =>
      _base(fontSize: 72, fontWeight: FontWeight.w600, color: color);
  static TextStyle headlineXXLBold({Color color = Colors.black}) =>
      _base(fontSize: 72, fontWeight: FontWeight.w700, color: color);

  // Headline XL
  static TextStyle headlineXLRegular({Color color = Colors.black}) =>
      _base(fontSize: 60, fontWeight: FontWeight.w400, color: color);
  static TextStyle headlineXLMedium({Color color = Colors.black}) =>
      _base(fontSize: 60, fontWeight: FontWeight.w500, color: color);
  static TextStyle headlineXLSemibold({Color color = Colors.black}) =>
      _base(fontSize: 60, fontWeight: FontWeight.w600, color: color);
  static TextStyle headlineXLBold({Color color = Colors.black}) =>
      _base(fontSize: 60, fontWeight: FontWeight.w700, color: color);

  // Headline LG
  static TextStyle headlineLGRegular({Color color = Colors.black}) =>
      _base(fontSize: 48, fontWeight: FontWeight.w400, color: color);
  static TextStyle headlineLGMedium({Color color = Colors.black}) =>
      _base(fontSize: 48, fontWeight: FontWeight.w500, color: color);
  static TextStyle headlineLGSemibold({Color color = Colors.black}) =>
      _base(fontSize: 48, fontWeight: FontWeight.w600, color: color);
  static TextStyle headlineLGBold({Color color = Colors.black}) =>
      _base(fontSize: 48, fontWeight: FontWeight.w700, color: color);

  // Headline MD
  static TextStyle headlineMDRegular({Color color = Colors.black}) =>
      _base(fontSize: 36, fontWeight: FontWeight.w400, color: color);
  static TextStyle headlineMDMedium({Color color = Colors.black}) =>
      _base(fontSize: 36, fontWeight: FontWeight.w500, color: color);
  static TextStyle headlineMDSemibold({Color color = Colors.black}) =>
      _base(fontSize: 36, fontWeight: FontWeight.w600, color: color);
  static TextStyle headlineMDBold({Color color = Colors.black}) =>
      _base(fontSize: 36, fontWeight: FontWeight.w700, color: color);

  // Headline SM
  static TextStyle headlineSMRegular({Color color = Colors.black}) =>
      _base(fontSize: 24, fontWeight: FontWeight.w400, color: color);
  static TextStyle headlineSMMedium({Color color = Colors.black}) =>
      _base(fontSize: 24, fontWeight: FontWeight.w500, color: color);
  static TextStyle headlineSMSemibold({Color color = Colors.black}) =>
      _base(fontSize: 24, fontWeight: FontWeight.w600, color: color);
  static TextStyle headlineSMBold({Color color = Colors.black}) =>
      _base(fontSize: 24, fontWeight: FontWeight.w700, color: color);

  // Headline XS
  static TextStyle headlineXSRegular({Color color = Colors.black}) =>
      _base(fontSize: 18, fontWeight: FontWeight.w400, color: color);
  static TextStyle headlineXSMedium({Color color = Colors.black}) =>
      _base(fontSize: 18, fontWeight: FontWeight.w500, color: color);
  static TextStyle headlineXSSemibold({Color color = Colors.black}) =>
      _base(fontSize: 18, fontWeight: FontWeight.w600, color: color);
  static TextStyle headlineXSBold({Color color = Colors.black}) =>
      _base(fontSize: 18, fontWeight: FontWeight.w700, color: color);

  // Text XL
  static TextStyle textXLRegular({Color color = Colors.black}) =>
      _base(fontSize: 16, fontWeight: FontWeight.w400, color: color);
  static TextStyle textXLMedium({Color color = Colors.black}) =>
      _base(fontSize: 16, fontWeight: FontWeight.w500, color: color);
  static TextStyle textXLSemibold({Color color = Colors.black}) =>
      _base(fontSize: 16, fontWeight: FontWeight.w600, color: color);
  static TextStyle textXLBold({Color color = Colors.black}) =>
      _base(fontSize: 16, fontWeight: FontWeight.w700, color: color);

  // Text LG
  static TextStyle textLGRegular({Color color = Colors.black}) =>
      _base(fontSize: 14, fontWeight: FontWeight.w400, color: color);
  static TextStyle textLGMedium({Color color = Colors.black}) =>
      _base(fontSize: 14, fontWeight: FontWeight.w500, color: color);
  static TextStyle textLGSemibold({Color color = Colors.black}) =>
      _base(fontSize: 14, fontWeight: FontWeight.w600, color: color);
  static TextStyle textLGBold({Color color = Colors.black}) =>
      _base(fontSize: 14, fontWeight: FontWeight.w700, color: color);

  // Text MD
  static TextStyle textMDRegular({Color color = Colors.black}) =>
      _base(fontSize: 12, fontWeight: FontWeight.w400, color: color);
  static TextStyle textMDMedium({Color color = Colors.black}) =>
      _base(fontSize: 12, fontWeight: FontWeight.w500, color: color);
  static TextStyle textMDSemibold({Color color = Colors.black}) =>
      _base(fontSize: 12, fontWeight: FontWeight.w600, color: color);
  static TextStyle textMDBold({Color color = Colors.black}) =>
      _base(fontSize: 12, fontWeight: FontWeight.w700, color: color);

  // Text SM
  static TextStyle textSMRegular({Color color = Colors.black}) =>
      _base(fontSize: 10, fontWeight: FontWeight.w400, color: color);
  static TextStyle textSMMedium({Color color = Colors.black}) =>
      _base(fontSize: 10, fontWeight: FontWeight.w500, color: color);
  static TextStyle textSMSemibold({Color color = Colors.black}) =>
      _base(fontSize: 10, fontWeight: FontWeight.w600, color: color);
  static TextStyle textSMBold({Color color = Colors.black}) =>
      _base(fontSize: 10, fontWeight: FontWeight.w700, color: color);
}
