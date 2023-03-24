part of 'current_rates_series_bloc.dart';

@freezed
class CurrentRatesSeriesEvent with _$CurrentRatesSeriesEvent {
  factory CurrentRatesSeriesEvent.loadCurrentRateSeries({required String code}) = LoadCurrentRateSeries;
  factory CurrentRatesSeriesEvent.reloadCurrentRateSeries({required String code}) = ReloadCurrentRateSeries;
}
