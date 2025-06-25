import 'package:flutter/material.dart';

class EffectStyles {
  ///Box shadow.
  static List<BoxShadow> shadowXS() {
    return [
      BoxShadow(
        color: Color(0xff121A2B).withValues(alpha: 0.05),
        blurRadius: 4,
        spreadRadius: 0,
        offset: Offset(0, 1),
      ),
    ];
  }

  static List<BoxShadow> shadowSM() {
    return [
      BoxShadow(
        color: Color(0xff121A2B).withValues(alpha: 0.06),
        blurRadius: 2,
        spreadRadius: -1,
        offset: Offset(0, 1),
      ),
      BoxShadow(
        color: Color(0xff121A2B).withValues(alpha: 0.1),
        blurRadius: 4,
        spreadRadius: 0,
        offset: Offset(0, 0),
      ),
    ];
  }

  static List<BoxShadow> shadowMD() {
    return [
      BoxShadow(
        color: Color(0xff121A2B).withValues(alpha: 0.06),
        blurRadius: 4,
        spreadRadius: -2,
        offset: Offset(0, 2),
      ),
      BoxShadow(
        color: Color(0xff121A2B).withValues(alpha: 0.1),
        blurRadius: 9,
        spreadRadius: -2,
        offset: Offset(0, 0),
      ),
    ];
  }

  static List<BoxShadow> shadowLG() {
    return [
      BoxShadow(
        color: Color(0xff121A2B).withValues(alpha: 0.05),
        blurRadius: 6,
        spreadRadius: -4,
        offset: Offset(0, 4),
      ),
      BoxShadow(
        color: Color(0xff121A2B).withValues(alpha: 0.1),
        blurRadius: 15,
        spreadRadius: -4,
        offset: Offset(0, 4),
      ),
    ];
  }

  static List<BoxShadow> shadowXL() {
    return [
      BoxShadow(
        color: Color(0xff121A2B).withValues(alpha: 0.04),
        blurRadius: 8,
        spreadRadius: -6,
        offset: Offset(0, 8),
      ),
      BoxShadow(
        color: Color(0xff121A2B).withValues(alpha: 0.1),
        blurRadius: 25,
        spreadRadius: -4,
        offset: Offset(0, 3),
      ),
    ];
  }

  static List<BoxShadow> shadowXXL() {
    return [
      BoxShadow(
        color: Color(0xff121A2B).withValues(alpha: 0.2),
        blurRadius: 45,
        spreadRadius: -12,
        offset: Offset(0, 10),
      ),
    ];
  }

  static List<BoxShadow> boxShadow() {
    return [
      const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.05),
        blurRadius: 28,
        offset: Offset(0, 9),
      ),
      const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.06),
        blurRadius: 6,
        offset: Offset(0, 3),
      ),
      const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.06),
        blurRadius: 16,
        offset: Offset(0, 6),
      ),
    ];
  }
}
