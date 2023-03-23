// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_rates_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExchangeRatesTable _$ExchangeRatesTableFromJson(Map<String, dynamic> json) =>
    ExchangeRatesTable(
      table: json['table'] as String,
      no: json['no'] as String,
      effectiveDate: json['effectiveDate'] as String,
    );

Map<String, dynamic> _$ExchangeRatesTableToJson(ExchangeRatesTable instance) =>
    <String, dynamic>{
      'table': instance.table,
      'no': instance.no,
      'effectiveDate': instance.effectiveDate,
    };

AvgExchangeRatesTable _$AvgExchangeRatesTableFromJson(
        Map<String, dynamic> json) =>
    AvgExchangeRatesTable(
      table: json['table'] as String,
      no: json['no'] as String,
      effectiveDate: json['effectiveDate'] as String,
      rates: (json['rates'] as List<dynamic>)
          .map((e) => AvgRateTables.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AvgExchangeRatesTableToJson(
        AvgExchangeRatesTable instance) =>
    <String, dynamic>{
      'table': instance.table,
      'no': instance.no,
      'effectiveDate': instance.effectiveDate,
      'rates': instance.rates.map((e) => e.toJson()).toList(),
    };

BidAskExchangeRatesTable _$BidAskExchangeRatesTableFromJson(
        Map<String, dynamic> json) =>
    BidAskExchangeRatesTable(
      table: json['table'] as String,
      no: json['no'] as String,
      effectiveDate: json['effectiveDate'] as String,
      rates: (json['rates'] as List<dynamic>)
          .map((e) => BidAskRateTables.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BidAskExchangeRatesTableToJson(
        BidAskExchangeRatesTable instance) =>
    <String, dynamic>{
      'table': instance.table,
      'no': instance.no,
      'effectiveDate': instance.effectiveDate,
      'rates': instance.rates.map((e) => e.toJson()).toList(),
    };
