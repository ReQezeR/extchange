import 'package:extchange/src/models/exchange_rates_series.dart';
import 'package:extchange/src/models/rate.dart';
import 'package:extchange/src/themes/theme_options.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:theme_provider/theme_provider.dart';

class LineChartDetailWidget extends StatefulWidget {
  const LineChartDetailWidget({Key? key, required this.avgSeries, required this.bidAskSeries}) : super(key: key);
  final AvgExchangeRatesSeries avgSeries;
  final BidAskExchangeRatesSeries bidAskSeries;

  @override
  State<LineChartDetailWidget> createState() => _LineChartDetailWidgetState();
}

class _LineChartDetailWidgetState extends State<LineChartDetailWidget> {
  late TrackballBehavior _trackballBehavior;

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
  void initState() {
    _trackballBehavior = TrackballBehavior(
        enable: true,
        lineWidth: 2,
        lineType: TrackballLineType.horizontal,
        activationMode: ActivationMode.singleTap,
        tooltipDisplayMode: TrackballDisplayMode.groupAllPoints,
        tooltipSettings: InteractiveTooltip(
          enable: true,
          color: Colors.grey.shade800,
          format: 'point.y',
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const double animationDuration = 2000;
    const double animationDelay = 2000;
    var theme = ThemeProvider.optionsOf<CustomThemeOptions>(context);
    _trackballBehavior = TrackballBehavior(
        enable: true,
        lineWidth: 2,
        lineType: TrackballLineType.horizontal,
        activationMode: ActivationMode.singleTap,
        tooltipDisplayMode: TrackballDisplayMode.groupAllPoints,
        lineColor: theme.mainIconColor,
        tooltipSettings: InteractiveTooltip(
          enable: true,
          color: theme.secondarySurfaceColor,
          textStyle: TextStyle(color: theme.mainTextColor),
          decimalPlaces: 4,
          format: 'point.y',
        ));
    return Container(
      decoration: BoxDecoration(
        color: theme.mainSurfaceColor,
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Kursy walut z ostatnich 30 dni",
                  style: TextStyle(
                    color: theme.mainTextColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SfCartesianChart(
              trackballBehavior: _trackballBehavior,
              plotAreaBackgroundColor: theme.mainSurfaceColor,
              borderColor: Colors.transparent,
              plotAreaBorderColor: Colors.transparent,
              legend: Legend(
                isVisible: true,
                position: LegendPosition.bottom,
                borderColor: Colors.transparent,
              ),
              primaryXAxis: DateTimeAxis(
                labelStyle: TextStyle(
                  color: theme.secondaryTextColor,
                ),
                interval: 7,
                borderWidth: 0,
                majorGridLines: const MajorGridLines(width: 0),
                majorTickLines: const MajorTickLines(width: 0),
                minorGridLines: const MinorGridLines(width: 0),
                minorTickLines: const MinorTickLines(width: 0),
              ),
              primaryYAxis: NumericAxis(
                labelStyle: TextStyle(
                  color: theme.secondaryTextColor,
                ),
                borderWidth: 0,
                rangePadding: ChartRangePadding.auto,
                majorGridLines: const MajorGridLines(width: 0),
                majorTickLines: const MajorTickLines(width: 0),
                minorGridLines: const MinorGridLines(width: 0),
                minorTickLines: const MinorTickLines(width: 0),
              ),
              series: <ChartSeries>[
                LineSeries<BidAskRate, DateTime>(
                  name: 'Kurs sprzedaży',
                  dataSource: widget.bidAskSeries.rates,
                  animationDuration: animationDuration,
                  animationDelay: animationDelay,
                  color: Colors.red,
                  enableTooltip: true,
                  width: 2,
                  xValueMapper: (BidAskRate rate, _) => DateTime.parse(rate.effectiveDate),
                  yValueMapper: (BidAskRate rate, _) => rate.askValue,
                ),
                LineSeries<AvgRate, DateTime>(
                  name: 'Kurs średni',
                  dataSource: widget.avgSeries.rates,
                  animationDuration: animationDuration,
                  animationDelay: animationDelay,
                  color: Colors.blueAccent,
                  enableTooltip: true,
                  width: 3,
                  xValueMapper: (AvgRate rate, _) => DateTime.parse(rate.effectiveDate),
                  yValueMapper: (AvgRate rate, _) => rate.midValue,
                ),
                LineSeries<BidAskRate, DateTime>(
                  name: 'Kurs kupna',
                  dataSource: widget.bidAskSeries.rates,
                  animationDuration: animationDuration,
                  animationDelay: animationDelay,
                  color: Colors.lightGreen,
                  enableTooltip: true,
                  width: 2,
                  xValueMapper: (BidAskRate rate, _) => DateTime.parse(rate.effectiveDate),
                  yValueMapper: (BidAskRate rate, _) => rate.bidValue,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
