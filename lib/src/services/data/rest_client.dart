import 'package:dio/dio.dart';
import 'package:extchange/src/models/exchange_rates_series.dart';
import 'package:extchange/src/models/tables/array_of_exchange_rates_table.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  //SERIES
  //AVG
  @GET("/exchangerates/rates/a/{code}/last/{n}/")
  Future<AvgExchangeRatesSeries> avgExchangeRatesSeries(@Path() String code, @Path() int n);

  @GET("/exchangerates/rates/a/{code}/{date}/")
  Future<AvgExchangeRatesSeries> avgExchangeRatesSeriesDate(@Path() String code, @Path() String date);

  @GET("/exchangerates/rates/a/{code}/{startDate}/{endDate}/")
  Future<AvgExchangeRatesSeries> avgExchangeRatesSeriesFromTo(@Path() String code, @Path() String startDate, @Path() String endDate);

  //BID ASK
  @GET("/exchangerates/rates/c/{code}/")
  Future<BidAskExchangeRatesSeries> bidAskExchangeRatesSeries(@Path() String code);

  @GET("/exchangerates/rates/c/{code}/{date}/")
  Future<BidAskExchangeRatesSeries> bidAskExchangeRatesSeriesDate(@Path() String code, @Path() String date);

  @GET("/exchangerates/rates/{table}/c/{startDate}/{endDate}/")
  Future<BidAskExchangeRatesSeries> bidAskExchangeRatesSeriesFromTo(@Path() String code, @Path() String startDate, @Path() String endDate);

  //TABLES
  //AVG
  @GET("/exchangerates/tables/a/")
  Future<ArrayOfAvgExchangeRatesTable> avgExchangeRatesTables();

  @GET("/exchangerates/tables/a/{date}/")
  Future<ArrayOfAvgExchangeRatesTable> avgExchangeRatesTablesDate(@Path() String date);

  @GET("/exchangerates/tables/a/{startDate}/{endDate}/")
  Future<ArrayOfAvgExchangeRatesTable> avgExchangeRatesTablesFromTo(@Path() String startDate, @Path() String endDate);

  //BID ASK
  @GET("/exchangerates/tables/c/")
  Future<ArrayOfBidAskExchangeRatesTable> bidAskExchangeRatesTables();

  @GET("/exchangerates/tables/c/{date}/")
  Future<ArrayOfBidAskExchangeRatesTable> bidAskExchangeRatesTablesDate(@Path() String date);

  @GET("/exchangerates/tables/c/{startDate}/{endDate}/")
  Future<ArrayOfBidAskExchangeRatesTable> bidAskExchangeRatesTablesFromTo(@Path() String startDate, @Path() String endDate);
}
