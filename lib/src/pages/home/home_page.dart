import 'package:extchange/src/themes/theme_options.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:theme_provider/theme_provider.dart';

import 'investing_animation.dart';
import 'custom_currency_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var horizontalMargin = const EdgeInsets.symmetric(horizontal: 15);

  @override
  Widget build(BuildContext context) {
    var theme = ThemeProvider.optionsOf<CustomThemeOptions>(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.1,
                margin: horizontalMargin,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        color: theme.mainAccentIconColor,
                        borderRadius: const BorderRadius.all(Radius.circular(5)),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.currency_exchange,
                            color: Colors.grey.shade900,
                          ),
                          const Text(
                            "Extchange",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: theme.secondarySurfaceColor,
                        borderRadius: const BorderRadius.all(Radius.circular(1000)),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            if (ThemeProvider.controllerOf(context).currentThemeId == 'dark_theme') {
                              ThemeProvider.controllerOf(context).setTheme('light_theme');
                            } else {
                              ThemeProvider.controllerOf(context).setTheme('dark_theme');
                            }
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: ThemeProvider.controllerOf(context).currentThemeId == 'dark_theme'
                                ? Icon(Icons.nightlight, color: theme.mainAccentIconColor)
                                : Icon(Icons.sunny, color: theme.secondaryIconColor),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                margin: horizontalMargin,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.45,
                      decoration: BoxDecoration(
                        color: theme.mainSurfaceColor,
                        borderRadius: const BorderRadius.all(Radius.circular(5)),
                      ),
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      clipBehavior: Clip.antiAlias,
                      child: Material(
                        color: Colors.transparent,
                        child: Stack(
                          children: [
                            Center(
                              child: InvestingAnimation(
                                accentColor: theme.mainAccentIconColor,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 60,
                                color: theme.mainTextColor.withAlpha(20),
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Text("Wybierz walute",
                                        style: TextStyle(
                                          color: theme.mainTextColor,
                                          fontSize: 18,
                                          letterSpacing: 1.5,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CurrencyButton(
                            title: "EUR",
                            icon: Icons.euro_rounded,
                            onTap: () => context.go('/details/eur'),
                          ),
                          const VerticalDivider(),
                          CurrencyButton(
                            title: "USD",
                            icon: Icons.attach_money,
                            onTap: () => context.go('/details/usd'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
