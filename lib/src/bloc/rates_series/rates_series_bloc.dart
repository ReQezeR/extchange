import 'package:bloc/bloc.dart';
import 'package:extchange/src/models/exchange_rates_series.dart';
import 'package:extchange/src/services/data/repos/rates_series_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'rates_series_state.dart';
part 'rates_series_event.dart';
part 'rates_series_bloc.freezed.dart';

@injectable
class RatesSeriesBloc extends Bloc<RatesSeriesEvent, RatesSeriesState> {
  final RatesSeriesRepo seriesRepo;
  RatesSeriesBloc(this.seriesRepo) : super(const RatesSeriesState.initial()) {
    on<CurrencyRateSeries>(_onCurrencyRateSeries);
    on<CurrentAvgRateSeries>(_onCurrentAvgRateSeries);
    on<CurrentBidAskRateSeries>(_onCurrentBidAskRateSeries);
    on<LastMonthAvgRateSeries>(_onLastMonthAvgRateSeries);
    on<LastMonthBidAskRateSeries>(_onLastMonthBidAskRateSeries);
  }

  void _onCurrencyRateSeries(CurrencyRateSeries event, Emitter<RatesSeriesState> emit) async {
    try {
      emit(const RatesSeriesState.loading());
      ExchangeRatesSeries ratesSeries = await seriesRepo.avgCurrentSeries(code: event.code);

      emit(RatesSeriesState.success(ratesSeries));
    } catch (e) {
      emit(RatesSeriesState.failure(e.toString()));
    }
  }

  void _onCurrentAvgRateSeries(CurrentAvgRateSeries event, Emitter<RatesSeriesState> emit) async {
    try {
      emit(const RatesSeriesState.loading());
      ExchangeRatesSeries ratesSeries = await seriesRepo.avgCurrentSeries(code: event.code);

      emit(RatesSeriesState.success(ratesSeries));
    } catch (e) {
      emit(RatesSeriesState.failure(e.toString()));
    }
  }

  void _onCurrentBidAskRateSeries(CurrentBidAskRateSeries event, Emitter<RatesSeriesState> emit) async {
    try {
      emit(const RatesSeriesState.loading());
      ExchangeRatesSeries ratesSeries = await seriesRepo.bidAskCurrentSeries(code: event.code);

      emit(RatesSeriesState.success(ratesSeries));
    } catch (e) {
      emit(RatesSeriesState.failure(e.toString()));
    }
  }

  void _onLastMonthAvgRateSeries(LastMonthAvgRateSeries event, Emitter<RatesSeriesState> emit) async {
    try {
      emit(const RatesSeriesState.loading());
      ExchangeRatesSeries ratesSeries = await seriesRepo.avgCurrentSeries(code: event.code);

      emit(RatesSeriesState.success(ratesSeries));
    } catch (e) {
      emit(RatesSeriesState.failure(e.toString()));
    }
  }

  void _onLastMonthBidAskRateSeries(LastMonthBidAskRateSeries event, Emitter<RatesSeriesState> emit) async {
    try {
      emit(const RatesSeriesState.loading());
      ExchangeRatesSeries ratesSeries = await seriesRepo.bidAskCurrentSeries(code: event.code);

      emit(RatesSeriesState.success(ratesSeries));
    } catch (e) {
      emit(RatesSeriesState.failure(e.toString()));
    }
  }
}
