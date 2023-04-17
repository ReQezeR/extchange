import 'dart:ui';

import 'package:extchange/src/themes/dark_theme.dart';
import 'package:extchange/src/themes/light_theme.dart';
import 'package:flutter/scheduler.dart';
import 'package:theme_provider/theme_provider.dart';

AppTheme defaultTheme() {
  var brightness = SchedulerBinding.instance.platformDispatcher.platformBrightness;
  bool isDarkMode = brightness == Brightness.dark;
  if (isDarkMode) {
    return customDarkTheme().copyWith(id: "default_theme", description: "dark");
  } else {
    return customLightTheme().copyWith(id: "default_theme", description: "light");
  }
}
