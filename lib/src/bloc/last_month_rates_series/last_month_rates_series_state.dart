part of 'last_month_rates_series_bloc.dart';

@freezed
class LastMonthRatesSeriesState with _$LastMonthRatesSeriesState {
  const factory LastMonthRatesSeriesState.initial() = _Initial;
  const factory LastMonthRatesSeriesState.loading() = _Loading;
  const factory LastMonthRatesSeriesState.success(AvgExchangeRatesSeries avgSeries, BidAskExchangeRatesSeries bidAskSeries) = _Success;
  const factory LastMonthRatesSeriesState.failure(String error) = _Failure;
}
