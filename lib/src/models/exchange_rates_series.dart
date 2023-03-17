import 'package:extchange/src/models/rate.dart';
import 'package:json_annotation/json_annotation.dart';

part 'exchange_rates_series.g.dart';

///**Currency exchange rate series model**
@JsonSerializable(explicitToJson: true)
class ExchangeRatesSeries {
  final String table;
  final String currency;
  final String code;
  final List<Rate> rates;

  ExchangeRatesSeries({
    required this.table,
    required this.currency,
    required this.code,
    required this.rates,
  });

  factory ExchangeRatesSeries.fromJson(Map<String, dynamic> json) {
    return _$ExchangeRatesSeriesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ExchangeRatesSeriesToJson(this);
}
