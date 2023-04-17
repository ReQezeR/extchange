import 'package:extchange/src/themes/theme_options.dart';
import 'package:extchange/src/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';

class CurrencyButton extends StatefulWidget {
  const CurrencyButton({Key? key, required this.icon, required this.title, required this.onTap, this.height = 150, this.width = 150}) : super(key: key);
  final double height, width;
  final IconData icon;
  final String title;
  final Function onTap;

  @override
  State<CurrencyButton> createState() => _CurrencyButtonState();
}

class _CurrencyButtonState extends State<CurrencyButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    var theme = ThemeProvider.optionsOf<CustomThemeOptions>(context);
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: CustomButton(
          height: widget.height,
          width: widget.width,
          decoration: BoxDecoration(
            color: theme.mainSurfaceColor,
            borderRadius: const BorderRadius.all(Radius.circular(5)),
          ),
          onTap: widget.onTap,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Icon(
                      widget.icon,
                      size: 90,
                      color: theme.secondaryAccentIconColor,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.title,
                    style: TextStyle(
                      fontSize: 18,
                      color: theme.secondaryTextColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
