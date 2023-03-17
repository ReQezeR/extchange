import 'package:extchange/src/models/tables/rate_tables.dart';
import 'package:json_annotation/json_annotation.dart';
part 'exchange_rates_table.g.dart';

///**Currency exchange rate series model**
@JsonSerializable(explicitToJson: true)
class ExchangeRatesTable {
  final String table;
  final String no;
  final String effectiveDate;
  final List<RateTables> rates;

  ExchangeRatesTable({
    required this.table,
    required this.no,
    required this.effectiveDate,
    required this.rates,
  });

  factory ExchangeRatesTable.fromJson(Map<String, dynamic> json) {
    return _$ExchangeRatesTableFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ExchangeRatesTableToJson(this);
}
