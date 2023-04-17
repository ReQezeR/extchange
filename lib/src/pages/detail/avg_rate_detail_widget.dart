import 'package:extchange/src/models/exchange_rates_series.dart';
import 'package:extchange/src/themes/theme_options.dart';
import 'package:extchange/src/widgets/changes_icon.dart';
import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';

class AvgRateWidget extends StatelessWidget {
  const AvgRateWidget({Key? key, required this.avgSeries}) : super(key: key);
  final AvgExchangeRatesSeries avgSeries;

  @override
  Widget build(BuildContext context) {
    var theme = ThemeProvider.optionsOf<CustomThemeOptions>(context);
    double height = 50;
    return Column(
      children: [
        Container(
          constraints: BoxConstraints(
            maxHeight: height,
          ),
          decoration: BoxDecoration(
            color: theme.mainSurfaceColor,
            borderRadius: const BorderRadius.all(Radius.circular(5)),
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: height,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Icon(
                          Icons.currency_exchange,
                          color: theme.secondaryAccentIconColor,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 0.0),
                        height: height,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "Kurs średni:",
                              style: TextStyle(
                                color: theme.mainTextColor,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "${avgSeries.rates[1].midValue} PLN",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                                color: theme.mainTextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ChangesIcon(
                        currentValue: avgSeries.rates[1].midValue,
                        previousValue: avgSeries.rates[0].midValue,
                        size: height,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const Divider(color: Colors.transparent),
      ],
    );
  }
}
