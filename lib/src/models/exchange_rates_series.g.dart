// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_rates_series.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExchangeRatesSeries _$ExchangeRatesSeriesFromJson(Map<String, dynamic> json) =>
    ExchangeRatesSeries(
      table: json['table'] as String,
      currency: json['currency'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$ExchangeRatesSeriesToJson(
        ExchangeRatesSeries instance) =>
    <String, dynamic>{
      'table': instance.table,
      'currency': instance.currency,
      'code': instance.code,
    };

AvgExchangeRatesSeries _$AvgExchangeRatesSeriesFromJson(
        Map<String, dynamic> json) =>
    AvgExchangeRatesSeries(
      table: json['table'] as String,
      currency: json['currency'] as String,
      code: json['code'] as String,
      rates: (json['rates'] as List<dynamic>)
          .map((e) => AvgRate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AvgExchangeRatesSeriesToJson(
        AvgExchangeRatesSeries instance) =>
    <String, dynamic>{
      'table': instance.table,
      'currency': instance.currency,
      'code': instance.code,
      'rates': instance.rates.map((e) => e.toJson()).toList(),
    };

BidAskExchangeRatesSeries _$BidAskExchangeRatesSeriesFromJson(
        Map<String, dynamic> json) =>
    BidAskExchangeRatesSeries(
      table: json['table'] as String,
      currency: json['currency'] as String,
      code: json['code'] as String,
      rates: (json['rates'] as List<dynamic>)
          .map((e) => BidAskRate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BidAskExchangeRatesSeriesToJson(
        BidAskExchangeRatesSeries instance) =>
    <String, dynamic>{
      'table': instance.table,
      'currency': instance.currency,
      'code': instance.code,
      'rates': instance.rates.map((e) => e.toJson()).toList(),
    };
