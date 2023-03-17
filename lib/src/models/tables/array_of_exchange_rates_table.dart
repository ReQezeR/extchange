import 'package:extchange/src/models/tables/exchange_rates_table.dart';
import 'package:json_annotation/json_annotation.dart';
part 'array_of_exchange_rates_table.g.dart';

///**Currency exchange rate series model**
@JsonSerializable(explicitToJson: true)
class ArrayOfExchangeRatesTable {
  final List<ExchangeRatesTable> exchangeRatesTables;

  ArrayOfExchangeRatesTable({
    required this.exchangeRatesTables,
  });

  factory ArrayOfExchangeRatesTable.fromJson(Map<String, dynamic> json) {
    return _$ArrayOfExchangeRatesTableFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ArrayOfExchangeRatesTableToJson(this);
}
