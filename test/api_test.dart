import 'package:extchange/src/models/exchange_rates_series.dart';
import 'package:extchange/src/services/data/clients/rates_series_client.dart';
import 'package:extchange/src/services/injector/injector.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUpAll(() {
    configureDependencies();
  });

  test('avgLastMonthSeries test', () async {
    RatesSeriesClient client = getIt<RatesSeriesClient>();

    ExchangeRatesSeries avgRate = await client.avgLastMonthSeries(code: 'usd');

    expect(avgRate, isNotNull);
    expect(avgRate.code, 'USD');
  });
}
