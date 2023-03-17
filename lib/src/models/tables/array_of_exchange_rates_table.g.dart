// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'array_of_exchange_rates_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArrayOfExchangeRatesTable _$ArrayOfExchangeRatesTableFromJson(
        Map<String, dynamic> json) =>
    ArrayOfExchangeRatesTable(
      exchangeRatesTables: (json['exchangeRatesTables'] as List<dynamic>)
          .map((e) => ExchangeRatesTable.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArrayOfExchangeRatesTableToJson(
        ArrayOfExchangeRatesTable instance) =>
    <String, dynamic>{
      'exchangeRatesTables':
          instance.exchangeRatesTables.map((e) => e.toJson()).toList(),
    };
