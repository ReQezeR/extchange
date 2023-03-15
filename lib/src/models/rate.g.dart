// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rate _$RateFromJson(Map<String, dynamic> json) => Rate(
      json['no'] as String,
      json['effectiveDate'] as String,
    );

Map<String, dynamic> _$RateToJson(Rate instance) => <String, dynamic>{
      'no': instance.tableNumber,
      'effectiveDate': instance.effectiveDate,
    };

AvgRate _$AvgRateFromJson(Map<String, dynamic> json) => AvgRate(
      tableNumber: json['no'] as String,
      effectiveDate: json['effectiveDate'] as String,
      midValue: (json['mid'] as num).toDouble(),
    );

Map<String, dynamic> _$AvgRateToJson(AvgRate instance) => <String, dynamic>{
      'no': instance.tableNumber,
      'effectiveDate': instance.effectiveDate,
      'mid': instance.midValue,
    };

BidAskRate _$BidAskRateFromJson(Map<String, dynamic> json) => BidAskRate(
      tableNumber: json['no'] as String,
      effectiveDate: json['effectiveDate'] as String,
      bidValue: (json['bid'] as num).toDouble(),
      askValue: (json['ask'] as num).toDouble(),
    );

Map<String, dynamic> _$BidAskRateToJson(BidAskRate instance) =>
    <String, dynamic>{
      'no': instance.tableNumber,
      'effectiveDate': instance.effectiveDate,
      'bid': instance.bidValue,
      'ask': instance.askValue,
    };
