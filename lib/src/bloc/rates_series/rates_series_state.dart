part of 'rates_series_bloc.dart';

@freezed
class RatesSeriesState with _$RatesSeriesState {
  const factory RatesSeriesState.initial() = _Initial;
  const factory RatesSeriesState.loading() = _Loading;
  const factory RatesSeriesState.success(ExchangeRatesSeries series) = _Success;
  const factory RatesSeriesState.failure(String error) = _Failure;
}
