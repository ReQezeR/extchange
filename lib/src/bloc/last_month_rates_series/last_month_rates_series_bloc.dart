import 'package:bloc/bloc.dart';
import 'package:extchange/src/models/exchange_rates_series.dart';
import 'package:extchange/src/services/data/repos/rates_series_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'last_month_rates_series_state.dart';
part 'last_month_rates_series_event.dart';
part 'last_month_rates_series_bloc.freezed.dart';

@injectable
class LastMonthRatesSeriesBloc extends Bloc<LastMonthRatesSeriesEvent, LastMonthRatesSeriesState> {
  final RatesSeriesRepo seriesRepo;

  LastMonthRatesSeriesBloc(this.seriesRepo) : super(const LastMonthRatesSeriesState.initial()) {
    on<LoadLastMonthRateSeries>(_onLoadLastMonthRateSeries);
    on<ReloadLastMonthRateSeries>(_onReloadLastMonthRateSeries);
  }

  void _onLoadLastMonthRateSeries(LoadLastMonthRateSeries event, Emitter<LastMonthRatesSeriesState> emit) async {
    try {
      emit(const LastMonthRatesSeriesState.loading());
      AvgExchangeRatesSeries avgRatesSeries = await seriesRepo.avgLastMonthSeries(code: event.code) as AvgExchangeRatesSeries;
      BidAskExchangeRatesSeries bidAskRatesSeries = await seriesRepo.bidAskLastMonthSeries(code: event.code) as BidAskExchangeRatesSeries;

      emit(LastMonthRatesSeriesState.success(avgRatesSeries, bidAskRatesSeries));
    } catch (e) {
      emit(LastMonthRatesSeriesState.failure(e.toString()));
    }
  }

  void _onReloadLastMonthRateSeries(ReloadLastMonthRateSeries event, Emitter<LastMonthRatesSeriesState> emit) async {
    try {
      AvgExchangeRatesSeries avgRatesSeries = await seriesRepo.avgLastMonthSeries(code: event.code) as AvgExchangeRatesSeries;
      BidAskExchangeRatesSeries bidAskRatesSeries = await seriesRepo.bidAskLastMonthSeries(code: event.code) as BidAskExchangeRatesSeries;

      emit(LastMonthRatesSeriesState.success(avgRatesSeries, bidAskRatesSeries));
    } catch (e) {
      emit(LastMonthRatesSeriesState.failure(e.toString()));
    }
  }
}
