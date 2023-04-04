import 'package:auto_animated/auto_animated.dart';
import 'package:extchange/src/models/exchange_rates_series.dart';
import 'package:extchange/src/pages/detail/line_chart_detail_widget.dart';
import 'package:extchange/src/widgets/changes_icon.dart';
import 'package:extchange/src/widgets/currency_icon.dart';
import 'package:recase/recase.dart';
import 'package:flutter/material.dart';

class DetailWidget extends StatefulWidget {
  const DetailWidget({Key? key, required this.avgSeries, required this.bidAskSeries}) : super(key: key);
  final AvgExchangeRatesSeries avgSeries;
  final BidAskExchangeRatesSeries bidAskSeries;

  @override
  State<DetailWidget> createState() => _DetailWidgetState();
}

class _DetailWidgetState extends State<DetailWidget> {
  Widget getRate({String title = "", String rate = "", double height = 50}) {
    var textColor = Colors.black;
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
                      child: const Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.currency_exchange,
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Text(
                      title,
                      style: TextStyle(color: textColor, fontSize: 12),
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
                      fontWeight: FontWeight.w400,
                      fontSize: 16.0,
                      color: textColor,
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
    return Column(
      children: [
        Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.25,
          ),
          decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          // margin: const EdgeInsets.symmetric(vertical: 20),
          clipBehavior: Clip.antiAlias,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.10,
                margin: const EdgeInsets.all(10),
                // color: Colors.amber,
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.height * 0.10,
                      height: MediaQuery.of(context).size.height * 0.10,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: const BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Center(
                        child: CurrencyIcon(currencyCode: widget.avgSeries.code, size: 50, color: Colors.lime),
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
                              style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                child: Icon(
                                  Icons.date_range,
                                  size: 14,
                                ),
                              ),
                              Text(
                                widget.avgSeries.rates[1].effectiveDate,
                                style: const TextStyle(
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
        const Divider(),
      ],
    );
  }
}

class AvgRateWidget extends StatelessWidget {
  const AvgRateWidget({Key? key, required this.avgSeries}) : super(key: key);
  final AvgExchangeRatesSeries avgSeries;

  @override
  Widget build(BuildContext context) {
    double height = 50;
    return Column(
      children: [
        Container(
          constraints: BoxConstraints(
            maxHeight: height,
          ),
          decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(5)),
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
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Icon(
                          Icons.currency_exchange,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 0.0),
                        height: height,
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "Kurs średni:",
                              style: TextStyle(
                                color: Colors.black,
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
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                                color: Colors.black,
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
        const Divider(),
      ],
    );
  }
}

class FailureWidget extends StatelessWidget {
  const FailureWidget({Key? key, required this.error}) : super(key: key);
  final String error;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          child: Column(
            children: [
              const Icon(
                Icons.warning,
                color: Colors.orangeAccent,
              ),
              Container(
                child: Text(
                  error,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: Colors.lime,
      ),
    );
  }
}
