// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate_tables.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RateTables _$RateTablesFromJson(Map<String, dynamic> json) => RateTables(
      currency: json['currency'] as String,
      code: json['code'] as String,
      mid: json['mid'] as String,
    );

Map<String, dynamic> _$RateTablesToJson(RateTables instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'code': instance.code,
      'mid': instance.mid,
    };
