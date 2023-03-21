part of 'rates_series_bloc.dart';

@freezed
class RatesSeriesEvent with _$RatesSeriesEvent {
  factory RatesSeriesEvent.getCurrencyRateSeries({required String code, required DateTime startDate, required DateTime endDate}) = CurrencyRateSeries;

  factory RatesSeriesEvent.getCurrentAvgRateSeries({required String code}) = CurrentAvgRateSeries;
  factory RatesSeriesEvent.getCurrentBidAskRateSeries({required String code}) = CurrentBidAskRateSeries;

  factory RatesSeriesEvent.getLastMonthAvgRateSeries({required String code}) = LastMonthAvgRateSeries;
  factory RatesSeriesEvent.getLastMonthBidAskRateSeries({required String code}) = LastMonthBidAskRateSeries;
}
