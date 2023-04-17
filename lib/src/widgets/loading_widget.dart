import 'package:flutter/material.dart';
import 'package:extchange/src/themes/theme_options.dart';
import 'package:theme_provider/theme_provider.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = ThemeProvider.optionsOf<CustomThemeOptions>(context);
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: Center(
        child: CircularProgressIndicator(
          color: theme.secondaryAccentIconColor,
        ),
      ),
    );
  }
}
