// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate_tables.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RateTables _$RateTablesFromJson(Map<String, dynamic> json) => RateTables(
      currency: json['currency'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$RateTablesToJson(RateTables instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'code': instance.code,
    };

AvgRateTables _$AvgRateTablesFromJson(Map<String, dynamic> json) =>
    AvgRateTables(
      currency: json['currency'] as String,
      code: json['code'] as String,
      mid: (json['mid'] as num).toDouble(),
    );

Map<String, dynamic> _$AvgRateTablesToJson(AvgRateTables instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'code': instance.code,
      'mid': instance.mid,
    };

BidAskRateTables _$BidAskRateTablesFromJson(Map<String, dynamic> json) =>
    BidAskRateTables(
      currency: json['currency'] as String,
      code: json['code'] as String,
      bid: (json['bid'] as num).toDouble(),
      ask: (json['ask'] as num).toDouble(),
    );

Map<String, dynamic> _$BidAskRateTablesToJson(BidAskRateTables instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'code': instance.code,
      'bid': instance.bid,
      'ask': instance.ask,
    };
