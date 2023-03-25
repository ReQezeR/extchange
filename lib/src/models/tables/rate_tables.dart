import 'package:json_annotation/json_annotation.dart';
part 'rate_tables.g.dart';

///**Currency exchange rate series model**
@JsonSerializable(explicitToJson: true)
class RateTables {
  final String currency, code;

  RateTables({required this.currency, required this.code});

  factory RateTables.fromJson(Map<String, dynamic> json) {
    return _$RateTablesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RateTablesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AvgRateTables extends RateTables {
  final double mid;

  AvgRateTables({
    required String currency,
    required String code,
    required this.mid,
  }) : super(currency: currency, code: code);

  factory AvgRateTables.fromJson(Map<String, dynamic> json) {
    return _$AvgRateTablesFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$AvgRateTablesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BidAskRateTables extends RateTables {
  final double bid;
  final double ask;

  BidAskRateTables({
    required String currency,
    required String code,
    required this.bid,
    required this.ask,
  }) : super(currency: currency, code: code);

  factory BidAskRateTables.fromJson(Map<String, dynamic> json) {
    return _$BidAskRateTablesFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$BidAskRateTablesToJson(this);
}
