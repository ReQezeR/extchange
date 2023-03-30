part of 'last_month_rates_series_bloc.dart';

@freezed
class LastMonthRatesSeriesEvent with _$LastMonthRatesSeriesEvent {
  factory LastMonthRatesSeriesEvent.loadLastMonthRateSeries({required String code}) = LoadLastMonthRateSeries;
  factory LastMonthRatesSeriesEvent.reloadLastMonthRateSeries({required String code}) = ReloadLastMonthRateSeries;
}
