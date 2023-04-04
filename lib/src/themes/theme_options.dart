import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';

class CustomThemeOptions implements AppThemeOptions {
  final Color mainColor;
  final Color backgroundColor;
  final Color mainSurfaceColor;
  final Color secondarySurfaceColor;
  final Color mainTextColor;
  final Color secondaryTextColor;
  final Color mainIconColor;
  final Color secondaryIconColor;
  final Color mainAccentIconColor;
  final Color secondaryAccentIconColor;
  final Color mainDetailColor;
  final Color secondaryDetailColor;
  final Color inputFieldColor;

  final Color successColor;
  final Color failureColor;
  final Color errorColor;
  final Color warningColor;
  CustomThemeOptions(
      {required this.mainColor,
      required this.backgroundColor,
      required this.mainSurfaceColor,
      required this.secondarySurfaceColor,
      required this.mainTextColor,
      required this.secondaryTextColor,
      this.mainIconColor = Colors.black87,
      this.secondaryIconColor = Colors.black,
      this.mainAccentIconColor = Colors.amber,
      this.secondaryAccentIconColor = Colors.blue,
      required this.mainDetailColor,
      required this.secondaryDetailColor,
      required this.inputFieldColor,
      this.successColor = Colors.green,
      this.failureColor = Colors.redAccent,
      this.errorColor = Colors.red,
      this.warningColor = Colors.orange});
}
