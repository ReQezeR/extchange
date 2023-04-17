import 'package:extchange/src/bloc/_index.dart';
import 'package:extchange/src/services/injector/injector.dart';
import 'package:extchange/src/themes/dark_theme.dart';
import 'package:extchange/src/themes/default_theme.dart';
import 'package:extchange/src/themes/light_theme.dart';
import 'package:extchange/src/themes/theme_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theme_provider/theme_provider.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = getIt<GoRouter>();
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<RatesSeriesBloc>()),
        BlocProvider(create: (_) => getIt<RatesTablesBloc>()),
        BlocProvider(create: (_) => getIt<CurrentRatesSeriesBloc>()),
        BlocProvider(create: (_) => getIt<LastMonthRatesSeriesBloc>()),
      ],
      child: ThemeProvider(
        saveThemesOnChange: true,
        defaultThemeId: 'default_theme',
        loadThemeOnInit: false,
        onInitCallback: (controller, previouslySavedThemeFuture) async {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          String? savedTheme = prefs.getString("current_theme");

          if (savedTheme != null) {
            controller.setTheme(savedTheme);
          } else {
            controller.setTheme("default_theme");
            await prefs.setString("current_theme", "default_theme");
            controller.forgetSavedTheme();
          }
        },
        onThemeChanged: (AppTheme oldTheme, AppTheme newTheme) async {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.setString("current_theme", newTheme.id);
        },
        themes: [
          customLightTheme(),
          customDarkTheme(),
          defaultTheme(),
        ],
        child: MaterialApp.router(
          title: 'Extchange',
          routerConfig: router,
        ),
      ),
    );
  }
}
