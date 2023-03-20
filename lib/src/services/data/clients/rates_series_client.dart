import 'package:dio/dio.dart';
import 'package:extchange/src/constants/_index.dart';
import 'package:extchange/src/services/data/config.dart';
import 'package:extchange/src/services/data/rest_client.dart';
import 'package:injectable/injectable.dart';

import '../../../models/exchange_rates_series.dart';

abstract class RatesSeriesClient {
  Future<ExchangeRatesSeries> exchangeRatesSeries({required String code, required DateTime startDate, required DateTime endDate});

  Future<ExchangeRatesSeries> avgCurrentSeries({required String code});
  Future<ExchangeRatesSeries> bidAskCurrentSeries({required String code});

  Future<ExchangeRatesSeries> avgLastMonthSeries({required String code});
  Future<ExchangeRatesSeries> bidAskLastMonthSeries({required String code});
}

@Injectable(as: RatesSeriesClient, env: [Env.prod])
class ProdRatesSeriesClient extends RatesSeriesClient {
  final Dio dio;
  final IConfig config;
  final RestClient client;

  @override
  Future<ExchangeRatesSeries> exchangeRatesSeries({required String code, required DateTime startDate, required DateTime endDate}) {
    return client.exchangeRatesSeriesFromTo(TableType.A, code, startDate.toString(), endDate.toString());
  }

  @override
  Future<ExchangeRatesSeries> avgCurrentSeries({required String code}) {
    return client.exchangeRatesSeries(TableType.A, code);
  }

  @override
  Future<ExchangeRatesSeries> bidAskCurrentSeries({required String code}) {
    return client.exchangeRatesSeries(TableType.C, code);
  }

  @override
  Future<ExchangeRatesSeries> avgLastMonthSeries({required String code}) {
    DateTime now = DateTime.now();
    return client.exchangeRatesSeriesFromTo(
        TableType.A, code, now.subtract(const Duration(days: 30)).toString().substring(0, 10), now.toString().substring(0, 10));
  }

  @override
  Future<ExchangeRatesSeries> bidAskLastMonthSeries({required String code}) {
    DateTime now = DateTime.now();
    return client.exchangeRatesSeriesFromTo(
        TableType.C, code, now.subtract(const Duration(days: 30)).toString().substring(0, 10), now.toString().substring(0, 10));
  }

  ProdRatesSeriesClient({
    required this.dio,
    required this.config,
  }) : client = RestClient(dio, baseUrl: config.baseUrl);
}
