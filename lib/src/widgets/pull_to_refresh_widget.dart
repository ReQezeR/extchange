import 'package:extchange/src/themes/theme_options.dart';
import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';

class PullToRefreshWidget extends StatelessWidget {
  const PullToRefreshWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = ThemeProvider.optionsOf<CustomThemeOptions>(context);
    return Center(
      child: SizedBox(
        height: 40,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Icon(
                size: 16,
                Icons.keyboard_arrow_down,
                color: theme.infoColor,
              ),
            ),
            SizedBox(
              height: 40,
              child: Center(
                child: Text(
                  "Pociągnij aby pobrać dane",
                  style: TextStyle(color: theme.secondaryTextColor),
                  overflow: TextOverflow.visible,
                  maxLines: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
