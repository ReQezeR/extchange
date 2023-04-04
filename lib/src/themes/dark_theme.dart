import 'package:flutter/material.dart';
import 'package:extchange/src/themes/theme_options.dart';
import 'package:theme_provider/theme_provider.dart';

AppTheme customDarkTheme() {
  return AppTheme(
    id: "dark_theme",
    description: "dark",
    data: ThemeData.dark().copyWith(
      iconTheme: ThemeData.dark().iconTheme.copyWith(color: Colors.white70),
      brightness: Brightness.dark,
      primaryColor: Colors.black,
      appBarTheme: const AppBarTheme(elevation: 0),
      textTheme: ThemeData.dark().textTheme.merge(ThemeData(fontFamily: "Lato").textTheme),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.amber[300]),
      textSelectionTheme: TextSelectionThemeData(selectionColor: Colors.blue[300]!.withOpacity(0.5)),
      highlightColor: Colors.grey.withAlpha(10),
      splashColor: Colors.grey.withAlpha(20),
    ),
    options: CustomThemeOptions(
      mainColor: Colors.black,
      backgroundColor: const Color(0xFF121212),
      mainSurfaceColor: const Color(0xFF1E1E1E),
      secondarySurfaceColor: const Color(0xFF222222),
      mainTextColor: Colors.white,
      secondaryTextColor: Colors.grey,
      mainIconColor: Colors.white70,
      secondaryIconColor: Colors.black,
      mainAccentIconColor: Colors.lime,
      secondaryAccentIconColor: Colors.lime,
      mainDetailColor: Colors.grey.shade400,
      secondaryDetailColor: Colors.grey.shade600,
      inputFieldColor: const Color(0xFF181613),
    ),
  );
}
