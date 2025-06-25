import 'package:get/get.dart';
import 'package:tiengviet/tiengviet.dart';

extension StringExtension on String? {
  bool hasData() => this != null && this!.trim().isNotEmpty;

  String display() => hasData() ? this!.trim() : 'empty_em_dash'.tr;

  DateTime? toDate() {
    if (hasData()) {
      try {
        return DateTime.parse(this!.trim()).toLocal();
      } catch (e) {
        return null;
      }
    } else {
      return null;
    }
  }

  bool compareKeyword(String? keyword) {
    if (keyword?.trim().isEmpty ?? true) {
      return true;
    }
    return normalize().contains(keyword.normalize());
  }

  String normalize() {
    if (hasData()) {
      return TiengViet.parse(this!.trim().toLowerCase() ?? '')
          .replaceAll(RegExp(r'[^a-zA-Z0-9]'), '');
    } else {
      return '';
    }
  }

  String normalizeFileName({int maxLength = 245}) {
    if (hasData()) {
      String sanitized = TiengViet.parse(this!.trim().toLowerCase() ?? '')
          .replaceAll(RegExp(r'[^a-zA-Z0-9]'), ' ')
          .replaceAll(RegExp(r'\s+'), ' ')
          .trim()
          .replaceAll(' ', '_');
      return sanitized.length > maxLength ? sanitized.substring(0, maxLength) : sanitized;
    } else {
      return '';
    }
  }

  String? replaceHtmlTagsWithNewline() {
    if (hasData()) {
      return this!
          .replaceAll(RegExp(r'<br\s*/?>', caseSensitive: false), '\n')
          .replaceAll(RegExp(r'</?p\s*/?>|</?div\s*/?>|<h[1-6]\s*/?>', caseSensitive: false), '\n')
          .replaceAll(
              RegExp(r'<style.*?>.*?</style>|<script.*?>.*?</script>',
                  dotAll: true, caseSensitive: false),
              '')
          .replaceAll(RegExp(r'<[^>]*>', caseSensitive: false), '')
          .replaceAll(RegExp(r'\n\s*\n'), '\n')
          .replaceAll('&nbsp;', ' ')
          .replaceAll('&amp;', '&')
          .replaceAll('&lt;', '<')
          .replaceAll('&gt;', '>')
          .replaceAll('&quot;', '"')
          .replaceAll('&#39;', "'")
          .trim();
    } else {
      return '';
    }
  }
}
