part of 'rates_tables_bloc.dart';

@freezed
class RatesTablesEvent with _$RatesTablesEvent {
  factory RatesTablesEvent.getCurrencyRateTables({required String table, required DateTime startDate, required DateTime endDate}) = CurrencyRateTables;

  factory RatesTablesEvent.getCurrentAvgRateTables() = CurrentAvgRateTables;
  factory RatesTablesEvent.getCurrentBidAskRateTables() = CurrentBidAskRateTables;

  factory RatesTablesEvent.getLastMonthAvgRateTables() = LastMonthAvgRateTables;
  factory RatesTablesEvent.getLastMonthBidAskRateTables() = LastMonthBidAskRateTables;
}
