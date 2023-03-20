import 'package:dio/dio.dart';
import 'package:extchange/src/constants/_index.dart';
import 'package:extchange/src/models/tables/array_of_exchange_rates_table.dart';
import 'package:extchange/src/services/data/config.dart';
import 'package:extchange/src/services/data/rest_client.dart';
import 'package:injectable/injectable.dart';

abstract class RatesTablesClient {
  Future<ArrayOfExchangeRatesTable> exchangeRatesTables({required String table, required DateTime startDate, required DateTime endDate});
  Future<ArrayOfExchangeRatesTable> avgCurrentTables();
  Future<ArrayOfExchangeRatesTable> bidAskCurrentTables();
  Future<ArrayOfExchangeRatesTable> avgLastMonthTables();
  Future<ArrayOfExchangeRatesTable> bidAskLastMonthTables();
}

@Injectable(as: RatesTablesClient, env: [Env.prod])
class ProdRatesTablesClient extends RatesTablesClient {
  final Dio dio;
  final IConfig config;
  final RestClient client;

  @override
  Future<ArrayOfExchangeRatesTable> exchangeRatesTables({required String table, required DateTime startDate, required DateTime endDate}) {
    return client.exchangeRatesTablesFromTo(table, startDate.toString(), endDate.toString());
  }

  @override
  Future<ArrayOfExchangeRatesTable> avgCurrentTables() {
    return client.exchangeRatesTables(TableType.A);
  }

  @override
  Future<ArrayOfExchangeRatesTable> bidAskCurrentTables() {
    return client.exchangeRatesTables(TableType.C);
  }

  @override
  Future<ArrayOfExchangeRatesTable> avgLastMonthTables() {
    DateTime now = DateTime.now();
    return client.exchangeRatesTablesFromTo(TableType.A, now.subtract(const Duration(days: 30)).toString().substring(0, 10), now.toString().substring(0, 10));
  }

  @override
  Future<ArrayOfExchangeRatesTable> bidAskLastMonthTables() {
    DateTime now = DateTime.now();
    return client.exchangeRatesTablesFromTo(TableType.C, now.subtract(const Duration(days: 30)).toString().substring(0, 10), now.toString().substring(0, 10));
  }

  ProdRatesTablesClient({
    required this.dio,
    required this.config,
  }) : client = RestClient(dio, baseUrl: config.baseUrl);
}
