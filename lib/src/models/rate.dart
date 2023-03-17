import 'package:json_annotation/json_annotation.dart';
part 'rate.g.dart';

///**A single currency exchange rate model**
@JsonSerializable()
class Rate {
  @JsonKey(name: 'no')
  final String tableNumber;

  final String effectiveDate;

  Rate(this.tableNumber, this.effectiveDate);

  factory Rate.fromJson(Map<String, dynamic> json) {
    return _$RateFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RateToJson(this);
}

///**A single currency average exchange rate model**
@JsonSerializable()
class AvgRate extends Rate {
  @JsonKey(name: 'mid')
  final double midValue;

  AvgRate({
    required String tableNumber,
    required String effectiveDate,
    required this.midValue,
  }) : super(tableNumber, effectiveDate);

  factory AvgRate.fromJson(Map<String, dynamic> json) {
    return _$AvgRateFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$AvgRateToJson(this);
}

///**Model of single currency buying and selling foreign exchange rates**
@JsonSerializable()
class BidAskRate extends Rate {
  @JsonKey(name: 'bid')
  final double bidValue;

  @JsonKey(name: 'ask')
  final double askValue;

  BidAskRate({
    required String tableNumber,
    required String effectiveDate,
    required this.bidValue,
    required this.askValue,
  }) : super(tableNumber, effectiveDate);

  factory BidAskRate.fromJson(Map<String, dynamic> json) {
    return _$BidAskRateFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$BidAskRateToJson(this);
}
