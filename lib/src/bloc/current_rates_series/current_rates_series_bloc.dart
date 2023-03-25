import 'package:bloc/bloc.dart';
import 'package:extchange/src/models/exchange_rates_series.dart';
import 'package:extchange/src/services/data/repos/rates_series_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'current_rates_series_state.dart';
part 'current_rates_series_event.dart';
part 'current_rates_series_bloc.freezed.dart';

@injectable
class CurrentRatesSeriesBloc extends Bloc<CurrentRatesSeriesEvent, CurrentRatesSeriesState> {
  final RatesSeriesRepo seriesRepo;
  CurrentRatesSeriesBloc(this.seriesRepo) : super(const CurrentRatesSeriesState.initial()) {
    on<LoadCurrentRateSeries>(_onLoadCurrentRateSeries);
    on<ReloadCurrentRateSeries>(_onReloadCurrentRateSeries);
  }

  void _onLoadCurrentRateSeries(LoadCurrentRateSeries event, Emitter<CurrentRatesSeriesState> emit) async {
    try {
      emit(const CurrentRatesSeriesState.loading());
      AvgExchangeRatesSeries avgRatesSeries = await seriesRepo.avgCurrentSeries(code: event.code) as AvgExchangeRatesSeries;
      BidAskExchangeRatesSeries bidAskRatesSeries = await seriesRepo.bidAskCurrentSeries(code: event.code) as BidAskExchangeRatesSeries;

      emit(CurrentRatesSeriesState.success(avgRatesSeries, bidAskRatesSeries));
    } catch (e) {
      emit(CurrentRatesSeriesState.failure(e.toString()));
    }
  }

  void _onReloadCurrentRateSeries(ReloadCurrentRateSeries event, Emitter<CurrentRatesSeriesState> emit) async {
    try {
      AvgExchangeRatesSeries avgRatesSeries = await seriesRepo.avgCurrentSeries(code: event.code) as AvgExchangeRatesSeries;
      BidAskExchangeRatesSeries bidAskRatesSeries = await seriesRepo.bidAskCurrentSeries(code: event.code) as BidAskExchangeRatesSeries;

      emit(CurrentRatesSeriesState.success(avgRatesSeries, bidAskRatesSeries));
    } catch (e) {
      emit(CurrentRatesSeriesState.failure(e.toString()));
    }
  }
}
