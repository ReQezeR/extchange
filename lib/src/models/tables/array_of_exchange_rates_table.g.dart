// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'array_of_exchange_rates_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArrayOfAvgExchangeRatesTable _$ArrayOfAvgExchangeRatesTableFromJson(
        Map<String, dynamic> json) =>
    ArrayOfAvgExchangeRatesTable(
      exchangeRatesTables: (json['exchangeRatesTables'] as List<dynamic>)
          .map((e) => AvgExchangeRatesTable.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArrayOfAvgExchangeRatesTableToJson(
        ArrayOfAvgExchangeRatesTable instance) =>
    <String, dynamic>{
      'exchangeRatesTables':
          instance.exchangeRatesTables.map((e) => e.toJson()).toList(),
    };

ArrayOfBidAskExchangeRatesTable _$ArrayOfBidAskExchangeRatesTableFromJson(
        Map<String, dynamic> json) =>
    ArrayOfBidAskExchangeRatesTable(
      exchangeRatesTables: (json['exchangeRatesTables'] as List<dynamic>)
          .map((e) =>
              BidAskExchangeRatesTable.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArrayOfBidAskExchangeRatesTableToJson(
        ArrayOfBidAskExchangeRatesTable instance) =>
    <String, dynamic>{
      'exchangeRatesTables':
          instance.exchangeRatesTables.map((e) => e.toJson()).toList(),
    };
