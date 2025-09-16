import 'package:flutter/cupertino.dart';

class AppleTypography {
  static AppleTypography? _instance;
  static AppleTypography? get instance => _instance;

  static void init(BuildContext context) {
    if (_instance == null) {
      _instance = AppleTypography();
      _instance?.context = context;
    }
  }

  BuildContext? context;

  TextStyle textStyle() {
    return CupertinoTheme.of(context!).textTheme.textStyle.copyWith(
      fontFamily: 'SF Pro Text',
      letterSpacing: -0.43,
    );
  }

  TextStyle actionTextStyle() {
    return CupertinoTheme.of(context!).textTheme.actionTextStyle.copyWith(
      fontFamily: 'SF Pro Text',
      letterSpacing: -0.43,
    );
  }

  TextStyle tabLabelTextStyle() {
    return CupertinoTheme.of(context!).textTheme.tabLabelTextStyle.copyWith(
      fontFamily: 'SF Pro Text',
      letterSpacing: -0.08,
    );
  }

  TextStyle navTitleTextStyle() {
    return CupertinoTheme.of(context!).textTheme.navTitleTextStyle.copyWith(
      fontFamily: 'SF Pro Text',
      letterSpacing: -0.43,
    );
  }

  TextStyle navLargeTitleTextStyle() {
    return CupertinoTheme.of(context!).textTheme.navLargeTitleTextStyle
        .copyWith(fontFamily: 'SF Pro Display', letterSpacing: 0.40);
  }

  TextStyle navActionTextStyle() {
    return CupertinoTheme.of(context!).textTheme.navActionTextStyle.copyWith(
      fontFamily: 'SF Pro Text',
      letterSpacing: -0.43,
    );
  }

  TextStyle pickerTextStyle() {
    return CupertinoTheme.of(context!).textTheme.pickerTextStyle.copyWith(
      fontFamily: 'SF Pro Text',
      letterSpacing: -0.43,
    );
  }

  TextStyle dateTimePickerTextStyle() {
    return CupertinoTheme.of(context!).textTheme.dateTimePickerTextStyle
        .copyWith(fontFamily: 'SF Pro Text', letterSpacing: -0.43);
  }

  // Large titles (34pt) - tracking +0.40
  static const largeTitle = TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: 34,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.40,
  );

  // Title 1 (28pt) - tracking +0.38
  static const title1 = TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: 28,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.38,
  );

  // Title 2 (22pt) - tracking -0.26
  static const title2 = TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: 22,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.26,
  );

  // Title 3 (20pt) - tracking -0.45
  static const title3 = TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: 20,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.45,
  );

  // Headline (17pt semibold) - tracking -0.43
  static const headline = TextStyle(
    fontFamily: 'SF Pro Text',
    fontSize: 17,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.43,
  );

  // Body (17pt) - tracking -0.43
  static const body = TextStyle(
    fontFamily: 'SF Pro Text',
    fontSize: 17,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.43,
  );

  // Callout (16pt) - tracking -0.31
  static const callout = TextStyle(
    fontFamily: 'SF Pro Text',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.31,
  );

  // Subhead (15pt) - tracking -0.23
  static const subhead = TextStyle(
    fontFamily: 'SF Pro Text',
    fontSize: 15,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.23,
  );

  // Footnote (13pt) - tracking -0.08
  static const footnote = TextStyle(
    fontFamily: 'SF Pro Text',
    fontSize: 13,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.08,
  );

  // Caption 1 (12pt) - tracking 0.0
  static const caption1 = TextStyle(
    fontFamily: 'SF Pro Text',
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.0,
  );

  // Caption 2 (11pt) - tracking +0.06
  static const caption2 = TextStyle(
    fontFamily: 'SF Pro Text',
    fontSize: 11,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.06,
  );
}
