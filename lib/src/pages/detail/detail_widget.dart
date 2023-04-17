import 'package:auto_animated/auto_animated.dart';
import 'package:extchange/src/models/exchange_rates_series.dart';
import 'package:extchange/src/pages/detail/line_chart_detail_widget.dart';
import 'package:extchange/src/themes/theme_options.dart';
import 'package:extchange/src/widgets/changes_icon.dart';
import 'package:extchange/src/widgets/currency_icon.dart';
import 'package:recase/recase.dart';
import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';

class DetailWidget extends StatefulWidget {
  const DetailWidget({Key? key, required this.avgSeries, required this.bidAskSeries}) : super(key: key);
  final AvgExchangeRatesSeries avgSeries;
  final BidAskExchangeRatesSeries bidAskSeries;

  @override
  State<DetailWidget> createState() => _DetailWidgetState();
}

class _DetailWidgetState extends State<DetailWidget> {
  Widget getRate({String title = "", String rate = "", double height = 50}) {
    var theme = ThemeProvider.optionsOf<CustomThemeOptions>(context);
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: height,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 0.0),
              width: height * 1.5,
              height: height * 0.9,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.currency_exchange,
                          size: 20,
                          color: theme.mainIconColor,
                        ),
                      ),
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        color: theme.mainTextColor,
                        fontSize: 12,
                      ),
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    rate,
                    style: TextStyle(
                      color: theme.mainTextColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildAnimatedItem(BuildContext context, Animation<double> animation, {required Widget child}) {
    return FadeTransition(
      opacity: Tween<double>(
        begin: 0,
        end: 1,
      ).animate(animation),
      child: SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, 5),
            end: Offset.zero,
          ).animate(animation),
          child: child),
    );
  }

  @override
  Widget build(BuildContext context) {
    var theme = ThemeProvider.optionsOf<CustomThemeOptions>(context);
    return Column(
      children: [
        Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.25,
          ),
          decoration: BoxDecoration(
            color: theme.mainSurfaceColor,
            borderRadius: const BorderRadius.all(Radius.circular(5)),
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.10,
                margin: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.height * 0.10,
                      height: MediaQuery.of(context).size.height * 0.10,
                      decoration: BoxDecoration(
                        color: theme.secondarySurfaceColor,
                        borderRadius: const BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Center(
                        child: CurrencyIcon(currencyCode: widget.avgSeries.code, size: 50, color: theme.secondaryAccentIconColor),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              ReCase(widget.avgSeries.currency).titleCase,
                              style: TextStyle(
                                color: theme.mainTextColor,
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Icon(
                                  Icons.date_range,
                                  size: 14,
                                  color: theme.mainIconColor,
                                ),
                              ),
                              Text(
                                widget.avgSeries.rates[1].effectiveDate,
                                style: TextStyle(
                                  color: theme.secondaryTextColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    getRate(title: "Kupno", rate: "${widget.bidAskSeries.rates[0].bidValue} PLN"),
                    getRate(title: "Sprzedaż", rate: "${widget.bidAskSeries.rates[0].askValue} PLN"),
                  ],
                ),
              )
            ],
          ),
        ),
        const Divider(color: Colors.transparent),
      ],
    );
  }
}

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

class FailureWidget extends StatelessWidget {
  const FailureWidget({Key? key, required this.error}) : super(key: key);
  final String error;

  @override
  Widget build(BuildContext context) {
    var theme = ThemeProvider.optionsOf<CustomThemeOptions>(context);
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: theme.mainSurfaceColor,
            borderRadius: const BorderRadius.all(Radius.circular(5)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.warning,
                      size: 60,
                      color: theme.errorColor,
                    ),
                  ),
                  Flexible(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        error,
                        style: TextStyle(color: theme.mainTextColor),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(color: Colors.transparent)
      ],
    );
  }
}

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
