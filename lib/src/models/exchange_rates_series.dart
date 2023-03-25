import 'package:extchange/src/models/rate.dart';
import 'package:json_annotation/json_annotation.dart';

part 'exchange_rates_series.g.dart';

///**Currency exchange rate series model**
@JsonSerializable(explicitToJson: true)
class ExchangeRatesSeries {
  final String table, currency, code;

  ExchangeRatesSeries({
    required this.table,
    required this.currency,
    required this.code,
  });

  factory ExchangeRatesSeries.fromJson(Map<String, dynamic> json) {
    return _$ExchangeRatesSeriesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ExchangeRatesSeriesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AvgExchangeRatesSeries extends ExchangeRatesSeries {
  final List<AvgRate> rates;

  AvgExchangeRatesSeries({
    required String table,
    required String currency,
    required String code,
    required this.rates,
  }) : super(table: table, currency: currency, code: code);

  factory AvgExchangeRatesSeries.fromJson(Map<String, dynamic> json) {
    return _$AvgExchangeRatesSeriesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AvgExchangeRatesSeriesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BidAskExchangeRatesSeries extends ExchangeRatesSeries {
  final List<BidAskRate> rates;

  BidAskExchangeRatesSeries({
    required String table,
    required String currency,
    required String code,
    required this.rates,
  }) : super(table: table, currency: currency, code: code);

  factory BidAskExchangeRatesSeries.fromJson(Map<String, dynamic> json) {
    return _$BidAskExchangeRatesSeriesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BidAskExchangeRatesSeriesToJson(this);
}
