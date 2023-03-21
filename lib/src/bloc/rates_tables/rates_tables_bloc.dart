import 'package:bloc/bloc.dart';
import 'package:extchange/src/models/tables/array_of_exchange_rates_table.dart';
import 'package:extchange/src/services/data/repos/rates_tables_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'rates_tables_state.dart';
part 'rates_tables_event.dart';
part 'rates_tables_bloc.freezed.dart';

@injectable
class RatesTablesBloc extends Bloc<RatesTablesEvent, RatesTablesState> {
  final RatesTablesRepo tablesRepo;
  RatesTablesBloc(this.tablesRepo) : super(const RatesTablesState.initial()) {
    on<CurrencyRateTables>(_onCurrencyRateTables);
    on<CurrentAvgRateTables>(_onCurrentAvgRateTables);
    on<CurrentBidAskRateTables>(_onCurrentBidAskRateTables);
    on<LastMonthAvgRateTables>(_onLastMonthAvgRateTables);
    on<LastMonthBidAskRateTables>(_onLastMonthBidAskRateTables);
  }

  void _onCurrencyRateTables(CurrencyRateTables event, Emitter<RatesTablesState> emit) async {
    try {
      emit(const RatesTablesState.loading());
      ArrayOfExchangeRatesTable ratesTables = await tablesRepo.avgCurrentTables();

      emit(RatesTablesState.success(ratesTables));
    } catch (e) {
      emit(RatesTablesState.failure(e.toString()));
    }
  }

  void _onCurrentAvgRateTables(CurrentAvgRateTables event, Emitter<RatesTablesState> emit) async {
    try {
      emit(const RatesTablesState.loading());
      ArrayOfExchangeRatesTable ratesTables = await tablesRepo.avgCurrentTables();

      emit(RatesTablesState.success(ratesTables));
    } catch (e) {
      emit(RatesTablesState.failure(e.toString()));
    }
  }

  void _onCurrentBidAskRateTables(CurrentBidAskRateTables event, Emitter<RatesTablesState> emit) async {
    try {
      emit(const RatesTablesState.loading());
      ArrayOfExchangeRatesTable ratesTables = await tablesRepo.bidAskCurrentTables();

      emit(RatesTablesState.success(ratesTables));
    } catch (e) {
      emit(RatesTablesState.failure(e.toString()));
    }
  }

  void _onLastMonthAvgRateTables(LastMonthAvgRateTables event, Emitter<RatesTablesState> emit) async {
    try {
      emit(const RatesTablesState.loading());
      ArrayOfExchangeRatesTable ratesTables = await tablesRepo.avgCurrentTables();

      emit(RatesTablesState.success(ratesTables));
    } catch (e) {
      emit(RatesTablesState.failure(e.toString()));
    }
  }

  void _onLastMonthBidAskRateTables(LastMonthBidAskRateTables event, Emitter<RatesTablesState> emit) async {
    try {
      emit(const RatesTablesState.loading());
      ArrayOfExchangeRatesTable ratesTables = await tablesRepo.bidAskCurrentTables();

      emit(RatesTablesState.success(ratesTables));
    } catch (e) {
      emit(RatesTablesState.failure(e.toString()));
    }
  }
}
