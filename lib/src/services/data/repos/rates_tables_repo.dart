import 'package:extchange/src/constants/_index.dart';
import 'package:extchange/src/models/tables/array_of_exchange_rates_table.dart';
import 'package:extchange/src/services/data/clients/rates_tables_client.dart';
import 'package:injectable/injectable.dart';

abstract class RatesTablesRepo {
  Future<ArrayOfExchangeRatesTable> exchangeRatesTables({required String table, required DateTime startDate, required DateTime endDate});

  Future<ArrayOfExchangeRatesTable> avgCurrentTables();
  Future<ArrayOfExchangeRatesTable> bidAskCurrentTables();

  Future<ArrayOfExchangeRatesTable> avgLastMonthTables();
  Future<ArrayOfExchangeRatesTable> bidAskLastMonthTables();
}

@Injectable(as: RatesTablesRepo, env: [Env.prod])
class ProdRatesTables extends RatesTablesRepo {
  final RatesTablesClient client;

  ProdRatesTables({
    required this.client,
  });

  @override
  Future<ArrayOfExchangeRatesTable> exchangeRatesTables({required String table, required DateTime startDate, required DateTime endDate}) {
    return client.exchangeRatesTables(table: table, startDate: startDate, endDate: endDate);
  }

  @override
  Future<ArrayOfExchangeRatesTable> avgCurrentTables() {
    return client.avgCurrentTables();
  }

  @override
  Future<ArrayOfExchangeRatesTable> bidAskCurrentTables() {
    return client.bidAskCurrentTables();
  }

  @override
  Future<ArrayOfExchangeRatesTable> avgLastMonthTables() {
    return client.avgLastMonthTables();
  }

  @override
  Future<ArrayOfExchangeRatesTable> bidAskLastMonthTables() {
    return client.bidAskLastMonthTables();
  }
}
