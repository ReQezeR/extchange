part of 'rates_tables_bloc.dart';

@freezed
class RatesTablesState with _$RatesTablesState {
  const factory RatesTablesState.initial() = _Initial;
  const factory RatesTablesState.loading() = _Loading;
  const factory RatesTablesState.success(ArrayOfExchangeRatesTable table) = _Success;
  const factory RatesTablesState.failure(String error) = _Failure;
}
