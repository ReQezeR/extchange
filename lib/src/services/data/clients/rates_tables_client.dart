import 'package:dio/dio.dart';
import 'package:extchange/src/constants/_index.dart';
import 'package:extchange/src/models/tables/array_of_exchange_rates_table.dart';
import 'package:extchange/src/services/data/config.dart';
import 'package:extchange/src/services/data/rest_client.dart';
import 'package:injectable/injectable.dart';

abstract class RatesTablesClient {
  Future<ArrayOfExchangeRatesTable> avgExchangeRatesTablesFromTo({required DateTime startDate, required DateTime endDate});
  Future<ArrayOfExchangeRatesTable> bidAskExchangeRatesTablesFromTo({required DateTime startDate, required DateTime endDate});
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
  Future<ArrayOfExchangeRatesTable> avgExchangeRatesTablesFromTo({required DateTime startDate, required DateTime endDate}) {
    return client.avgExchangeRatesTablesFromTo(startDate.toString(), endDate.toString());
  }

  @override
  Future<ArrayOfExchangeRatesTable> bidAskExchangeRatesTablesFromTo({required DateTime startDate, required DateTime endDate}) {
    return client.bidAskExchangeRatesTablesFromTo(startDate.toString(), endDate.toString());
  }

  @override
  Future<ArrayOfExchangeRatesTable> avgCurrentTables() {
    return client.avgExchangeRatesTables();
  }

  @override
  Future<ArrayOfExchangeRatesTable> bidAskCurrentTables() {
    return client.bidAskExchangeRatesTables();
  }

  @override
  Future<ArrayOfExchangeRatesTable> avgLastMonthTables() {
    DateTime now = DateTime.now();
    return client.avgExchangeRatesTablesFromTo(now.subtract(const Duration(days: 30)).toString().substring(0, 10), now.toString().substring(0, 10));
  }

  @override
  Future<ArrayOfExchangeRatesTable> bidAskLastMonthTables() {
    DateTime now = DateTime.now();
    return client.bidAskExchangeRatesTablesFromTo(now.subtract(const Duration(days: 30)).toString().substring(0, 10), now.toString().substring(0, 10));
  }

  ProdRatesTablesClient({
    required this.dio,
    required this.config,
  }) : client = RestClient(dio, baseUrl: config.baseUrl);
}
