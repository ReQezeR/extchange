import 'package:extchange/src/constants/_index.dart';
import 'package:extchange/src/models/exchange_rates_series.dart';
import 'package:extchange/src/services/data/clients/rates_series_client.dart';
import 'package:injectable/injectable.dart';

abstract class RatesSeriesRepo {
  Future<ExchangeRatesSeries> exchangeRatesSeries({required String code, required DateTime startDate, required DateTime endDate});

  Future<ExchangeRatesSeries> avgCurrentSeries({required String code});
  Future<ExchangeRatesSeries> bidAskCurrentSeries({required String code});

  Future<ExchangeRatesSeries> avgLastMonthSeries({required String code});
  Future<ExchangeRatesSeries> bidAskLastMonthSeries({required String code});
}

@Injectable(as: RatesSeriesRepo, env: [Env.prod])
class ProdRatesSeries extends RatesSeriesRepo {
  final RatesSeriesClient client;

  ProdRatesSeries({
    required this.client,
  });

  @override
  Future<ExchangeRatesSeries> exchangeRatesSeries({required String code, required DateTime startDate, required DateTime endDate}) {
    return client.exchangeRatesSeries(code: code, startDate: startDate, endDate: endDate);
  }

  @override
  Future<ExchangeRatesSeries> avgCurrentSeries({required String code}) {
    return client.avgCurrentSeries(code: code);
  }

  @override
  Future<ExchangeRatesSeries> bidAskCurrentSeries({required String code}) {
    return client.bidAskCurrentSeries(code: code);
  }

  @override
  Future<ExchangeRatesSeries> avgLastMonthSeries({required String code}) {
    return client.avgLastMonthSeries(code: code);
  }

  @override
  Future<ExchangeRatesSeries> bidAskLastMonthSeries({required String code}) {
    return client.bidAskLastMonthSeries(code: code);
  }
}
