import 'package:intl/intl.dart';

class DateFormatPattern {
  DateFormatPattern._();

  static const dMY = 'dd/MM/yyyy';
  static const dMYY = 'dd/MM/yy';
  static const YMd = 'yyyy-MM-dd';
  static const Hm = 'HH:mm';
  static const Hms = 'HH:mm:ss';
  static const dMYHm = 'dd/MM/yyyy HH:mm';
  static const HmdMY = 'HH:mm dd/MM/yyyy';
  static const dMYTHmsZ = 'yyyy-MM-dd\'T\'HH:mm:ss\'Z\'';
}

extension DateTimeExtension on DateTime? {
  String? toRequest({String? format}) {
    return formatString(format: format);
  }

  String? formatString({String? format}) {
    try {
      return _dateToString(format ?? DateFormatPattern.dMYTHmsZ);
    } catch (e) {
      return null;
    }
  }

  String? getTimeStr() {
    try {
      return _dateToString(DateFormatPattern.Hm);
    } catch (e) {
      return null;
    }
  }

  String? getDateStr() {
    try {
      return _dateToString(DateFormatPattern.dMY);
    } catch (e) {
      return null;
    }
  }

  String? getTimeDateStr() {
    try {
      return _dateToString(DateFormatPattern.HmdMY);
    } catch (e) {
      return null;
    }
  }

  String? _dateToString(String dateFormat) {
    try {
      var format = DateFormat(dateFormat);
      var dateString = format.format(this!);
      return dateString;
    } catch (e) {
      return null;
    }
  }

  bool isBeforeDay(DateTime? compareDate) {
    if (this == null || compareDate == null) {
      return false;
    } else {
      return this!.isBefore(DateTime(
        compareDate.year,
        compareDate.month,
        compareDate.day,
      ));
    }
  }

  String getDifferentDate(DateTime? date) {
    if (date == null) {
      return '';
    }
    final difference = this!.difference(date);
    List<String> list = [];
    if (difference.inDays > 0) {
      list.add('${difference.inDays} ngày');
    }
    if (difference.inHours.remainder(24) > 0) {
      list.add('${difference.inHours.remainder(24)} giờ');
    }
    if (difference.inMinutes.remainder(60) > 0) {
      list.add('${difference.inMinutes.remainder(60)} phút');
    }
    return list.isEmpty ? '0' : list.join(' ');
  }
}
