import 'package:flutter/material.dart';
import 'package:extchange/src/themes/theme_options.dart';
import 'package:theme_provider/theme_provider.dart';

AppTheme customLightTheme() {
  return AppTheme(
    id: "light_theme",
    description: "Light Color Scheme",
    data: ThemeData.light().copyWith(
      iconTheme: ThemeData.dark().iconTheme.copyWith(color: Colors.grey.shade800),
      brightness: Brightness.light,
      primaryColor: Colors.white,
      appBarTheme: const AppBarTheme(elevation: 0),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.amber),
      textSelectionTheme: TextSelectionThemeData(selectionColor: Colors.blue[400]!.withOpacity(0.5)),
      textTheme: ThemeData.light().textTheme.merge(ThemeData(fontFamily: "Lato").textTheme),
      highlightColor: Colors.black.withAlpha(20),
      splashColor: Colors.black.withAlpha(50),
    ),
    options: CustomThemeOptions(
      mainColor: Colors.white,
      backgroundColor: Colors.grey.shade300,
      mainSurfaceColor: Colors.white,
      secondarySurfaceColor: Colors.grey.shade200,
      mainTextColor: Colors.black,
      secondaryTextColor: Colors.grey.shade600,
      mainIconColor: Colors.grey.shade800,
      secondaryIconColor: Colors.black,
      mainAccentIconColor: Colors.lime,
      secondaryAccentIconColor: Colors.grey.shade900,
      mainDetailColor: Colors.grey.shade300,
      secondaryDetailColor: Colors.grey.shade500,
      inputFieldColor: Colors.white,
    ),
  );
}
