import 'package:extchange/src/models/exchange_rates_series.dart';
import 'package:extchange/src/themes/theme_options.dart';
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
