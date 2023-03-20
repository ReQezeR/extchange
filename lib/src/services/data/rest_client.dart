import 'package:dio/dio.dart';
import 'package:extchange/src/models/exchange_rates_series.dart';
import 'package:extchange/src/models/tables/array_of_exchange_rates_table.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/exchangerates/rates/{table}/{code}/")
  Future<ExchangeRatesSeries> exchangeRatesSeries(@Path() String table, @Path() String code);

  @GET("/exchangerates/rates/{table}/{code}/{date}/")
  Future<ExchangeRatesSeries> exchangeRatesSeriesDate(@Path() String table, @Path() String code, @Path() String date);

  @GET("/exchangerates/rates/{table}/{code}/{startDate}/{endDate}/")
  Future<ExchangeRatesSeries> exchangeRatesSeriesFromTo(@Path() String table, @Path() String code, @Path() String startDate, @Path() String endDate);

  @GET("/exchangerates/tables/{table}/")
  Future<ArrayOfExchangeRatesTable> exchangeRatesTables(@Path() String table);

  @GET("/exchangerates/tables/{table}/{date}/")
  Future<ArrayOfExchangeRatesTable> exchangeRatesTablesDate(@Path() String table, @Path() String date);

  @GET("/exchangerates/tables/{table}/{startDate}/{endDate}/")
  Future<ArrayOfExchangeRatesTable> exchangeRatesTablesFromTo(@Path() String table, @Path() String startDate, @Path() String endDate);
}
