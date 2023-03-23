import 'package:extchange/src/models/tables/rate_tables.dart';
import 'package:json_annotation/json_annotation.dart';
part 'exchange_rates_table.g.dart';

///**Currency exchange rate series model**
@JsonSerializable(explicitToJson: true)
class ExchangeRatesTable {
  final String table, no, effectiveDate;

  ExchangeRatesTable({required this.table, required this.no, required this.effectiveDate});

  factory ExchangeRatesTable.fromJson(Map<String, dynamic> json) {
    return _$ExchangeRatesTableFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ExchangeRatesTableToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AvgExchangeRatesTable extends ExchangeRatesTable {
  final List<AvgRateTables> rates;

  AvgExchangeRatesTable({
    required String table,
    required String no,
    required String effectiveDate,
    required this.rates,
  }) : super(table: table, no: no, effectiveDate: effectiveDate);

  factory AvgExchangeRatesTable.fromJson(Map<String, dynamic> json) {
    return _$AvgExchangeRatesTableFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$AvgExchangeRatesTableToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BidAskExchangeRatesTable extends ExchangeRatesTable {
  final List<BidAskRateTables> rates;

  BidAskExchangeRatesTable({
    required String table,
    required String no,
    required String effectiveDate,
    required this.rates,
  }) : super(table: table, no: no, effectiveDate: effectiveDate);

  factory BidAskExchangeRatesTable.fromJson(Map<String, dynamic> json) {
    return _$BidAskExchangeRatesTableFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$BidAskExchangeRatesTableToJson(this);
}
