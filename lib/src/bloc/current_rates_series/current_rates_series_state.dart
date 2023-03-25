part of 'current_rates_series_bloc.dart';

@freezed
class CurrentRatesSeriesState with _$CurrentRatesSeriesState {
  const factory CurrentRatesSeriesState.initial() = _Initial;
  const factory CurrentRatesSeriesState.loading() = _Loading;
  const factory CurrentRatesSeriesState.success(AvgExchangeRatesSeries avgSeries, BidAskExchangeRatesSeries bidAskSeries) = _Success;
  const factory CurrentRatesSeriesState.failure(String error) = _Failure;
}
