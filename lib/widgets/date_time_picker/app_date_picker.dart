import 'package:flutter/material.dart';
import 'package:flutter_cupertino_datetime_picker/flutter_cupertino_datetime_picker.dart';
import 'package:flutter_cupertino_datetime_picker/src/date_picker_constants.dart';
import 'package:flutter_cupertino_datetime_picker/src/date_time_formatter.dart';

import 'app_datetime_picker_widget.dart';

///
/// author: Dylan Wu
/// since: 2018/06/21
class AppDatePicker {
  /// Display date picker in bottom sheet.
  ///
  /// context: [BuildContext]
  /// minDateTime: [DateTime] minimum date time
  /// maxDateTime: [DateTime] maximum date time
  /// initialDateTime: [DateTime] initial date time for selected
  /// dateFormat: [String] date format pattern
  /// locale: [DateTimePickerLocale] internationalization
  /// pickerMode: [DateTimePickerMode] display mode: date(DatePicker)、time(TimePicker)、datetime(DateTimePicker)
  /// pickerTheme: [DateTimePickerTheme] the theme of date time picker
  /// onCancel: [DateVoidCallback] pressed title cancel widget event
  /// onClose: [DateVoidCallback] date picker closed event
  /// onChange: [DateValueCallback] selected date time changed event
  /// onConfirm: [DateValueCallback] pressed title confirm widget event
  static void showDatePicker(
    BuildContext context, {
    DateTime? minDateTime,
    DateTime? maxDateTime,
    DateTime? initialDateTime,
    String? dateFormat,
    DateTimePickerLocale locale = DATETIME_PICKER_LOCALE_DEFAULT,
    DateTimePickerMode pickerMode = DateTimePickerMode.date,
    DateTimePickerTheme pickerTheme = DateTimePickerTheme.Default,
    DateVoidCallback? onCancel,
    DateVoidCallback? onClose,
    DateValueCallback? onChange,
    DateValueCallback? onConfirm,
    int minuteDivider = 1,
    bool onMonthChangeStartWithFirstDate = false,
  }) {
    // handle the range of datetime
    minDateTime ??= DateTime.parse(DATE_PICKER_MIN_DATETIME);
    maxDateTime ??= DateTime.parse(DATE_PICKER_MAX_DATETIME);

    // handle initial DateTime
    initialDateTime ??= DateTime.now();

    // Set value of date format
    if (dateFormat != null && dateFormat.isNotEmpty) {
      // Check whether date format is legal or not
      if (DateTimeFormatter.isDayFormat(dateFormat)) {
        if (pickerMode == DateTimePickerMode.time) {
          pickerMode = DateTimeFormatter.isTimeFormat(dateFormat)
              ? DateTimePickerMode.datetime
              : DateTimePickerMode.date;
        }
      } else {
        if (pickerMode == DateTimePickerMode.date ||
            pickerMode == DateTimePickerMode.datetime) {
          pickerMode = DateTimePickerMode.time;
        }
      }
    } else {
      dateFormat = DateTimeFormatter.generateDateFormat(pickerMode);
    }

    Navigator.push(
      context,
      _MyDatePickerRoute(
        onMonthChangeStartWithFirstDate: onMonthChangeStartWithFirstDate,
        minDateTime: minDateTime,
        maxDateTime: maxDateTime,
        initialDateTime: initialDateTime,
        dateFormat: dateFormat,
        locale: locale,
        pickerMode: pickerMode,
        pickerTheme: pickerTheme,
        onCancel: onCancel,
        onChange: onChange,
        onConfirm: onConfirm,
        theme: Theme.of(context),
        barrierLabel:
            MaterialLocalizations.of(context).modalBarrierDismissLabel,
        minuteDivider: minuteDivider,
      ),
    ).whenComplete(onClose ?? () => {});
  }
}

class _MyDatePickerRoute<T> extends PopupRoute<T> {
  _MyDatePickerRoute({
    required this.onMonthChangeStartWithFirstDate,
    this.minDateTime,
    this.maxDateTime,
    this.initialDateTime,
    required this.dateFormat,
    required this.locale,
    required this.pickerMode,
    required this.pickerTheme,
    this.onCancel,
    this.onChange,
    this.onConfirm,
    required this.theme,
    this.barrierLabel,
    required this.minuteDivider,
    super.settings,
  });

  final DateTime? minDateTime, maxDateTime, initialDateTime;
  final String dateFormat;
  final DateTimePickerLocale locale;
  final DateTimePickerMode pickerMode;
  final DateTimePickerTheme pickerTheme;
  final VoidCallback? onCancel;
  final DateValueCallback? onChange;
  final DateValueCallback? onConfirm;
  final int minuteDivider;
  final bool onMonthChangeStartWithFirstDate;

  final ThemeData theme;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 200);

  @override
  bool get barrierDismissible => true;

  @override
  final String? barrierLabel;

  @override
  Color get barrierColor => Colors.black54;

  AnimationController? _animationController;

  @override
  AnimationController createAnimationController() {
    assert(_animationController == null);
    assert(navigator?.overlay != null);
    _animationController =
        BottomSheet.createAnimationController(navigator!.overlay!);
    return _animationController!;
  }

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    double height = pickerTheme.pickerHeight;
    if (pickerTheme.title != null || pickerTheme.showTitle) {
      height += pickerTheme.titleHeight;
    }

    Widget bottomSheet = MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: _MyDatePickerComponent(route: this, pickerHeight: height),
    );

    bottomSheet = Theme(data: theme, child: bottomSheet);
    return bottomSheet;
  }
}

class _MyDatePickerComponent extends StatelessWidget {
  final _MyDatePickerRoute route;
  final double _pickerHeight;

  const _MyDatePickerComponent(
      {required this.route, required pickerHeight})
      : _pickerHeight = pickerHeight;

  @override
  Widget build(BuildContext context) {
    Widget? pickerWidget;
    switch (route.pickerMode) {
      case DateTimePickerMode.date:
      case DateTimePickerMode.time:
      case DateTimePickerMode.datetime:
        pickerWidget = AppDateTimePickerWidget(
          minDateTime: route.minDateTime,
          maxDateTime: route.maxDateTime,
          initDateTime: route.initialDateTime,
          dateFormat: route.dateFormat,
          locale: route.locale,
          pickerTheme: route.pickerTheme,
          onCancel: route.onCancel,
          onChange: route.onChange,
          onConfirm: route.onConfirm,
          minuteDivider: route.minuteDivider,
          onMonthChangeStartWithFirstDate:
              route.onMonthChangeStartWithFirstDate,
        );
        break;
    }
    return GestureDetector(
      child: AnimatedBuilder(
        animation: route.animation!,
        builder: (BuildContext context, Widget? child) {
          return ClipRect(
            child: CustomSingleChildLayout(
              delegate: _MyBottomPickerLayout(route.animation!.value,
                  contentHeight: _pickerHeight),
              child: pickerWidget,
            ),
          );
        },
      ),
    );
  }
}

class _MyBottomPickerLayout extends SingleChildLayoutDelegate {
  _MyBottomPickerLayout(this.progress, {required this.contentHeight});

  final double progress;
  final double contentHeight;

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    return BoxConstraints(
      minWidth: constraints.maxWidth,
      maxWidth: constraints.maxWidth,
      minHeight: 0.0,
      maxHeight: contentHeight,
    );
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    double height = size.height - childSize.height * progress;
    return Offset(0.0, height);
  }

  @override
  bool shouldRelayout(_MyBottomPickerLayout oldDelegate) {
    return progress != oldDelegate.progress;
  }
}
