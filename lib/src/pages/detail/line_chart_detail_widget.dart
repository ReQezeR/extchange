import 'package:extchange/src/models/exchange_rates_series.dart';
import 'package:extchange/src/models/rate.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LineChartDetailWidget extends StatefulWidget {
  const LineChartDetailWidget({Key? key, required this.avgSeries, required this.bidAskSeries}) : super(key: key);
  final AvgExchangeRatesSeries avgSeries;
  final BidAskExchangeRatesSeries bidAskSeries;

  @override
  State<LineChartDetailWidget> createState() => _LineChartDetailWidgetState();
}

class SalesData {
  late DateTime year;
  int sales;
  SalesData(int year, this.sales) {
    this.year = DateTime(year);
  }
}

class _LineChartDetailWidgetState extends State<LineChartDetailWidget> {
  final List<SalesData> chartData = [SalesData(2010, 35), SalesData(2011, 28), SalesData(2012, 34), SalesData(2013, 32), SalesData(2014, 40)];

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
    const double animationDuration = 2000;
    const double animationDelay = 2000;
    return Container(
      decoration: const BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SfCartesianChart(
          plotAreaBackgroundColor: Colors.grey.shade900,
          legend: Legend(
            isVisible: true,
            position: LegendPosition.bottom,
          ),
          // backgroundColor: Colors.black,
          primaryXAxis: DateTimeAxis(interval: 7),
          series: <ChartSeries>[
            // Renders line chart
            LineSeries<AvgRate, DateTime>(
              name: 'Kurs średni',
              dataSource: widget.avgSeries.rates,
              animationDuration: animationDuration,
              animationDelay: animationDelay,
              color: Colors.blueAccent,
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
              width: 2,
              xValueMapper: (BidAskRate rate, _) => DateTime.parse(rate.effectiveDate),
              yValueMapper: (BidAskRate rate, _) => rate.bidValue,
            ),
            LineSeries<BidAskRate, DateTime>(
              name: 'Kurs sprzedaży',
              dataSource: widget.bidAskSeries.rates,
              animationDuration: animationDuration,
              animationDelay: animationDelay,
              color: Colors.red,
              width: 2,
              xValueMapper: (BidAskRate rate, _) => DateTime.parse(rate.effectiveDate),
              yValueMapper: (BidAskRate rate, _) => rate.askValue,
            ),
          ],
        ),
      ),
    );
  }
}
