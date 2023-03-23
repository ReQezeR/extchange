import 'package:extchange/src/models/tables/exchange_rates_table.dart';
import 'package:json_annotation/json_annotation.dart';
part 'array_of_exchange_rates_table.g.dart';

abstract class ArrayOfExchangeRatesTable {}

///**Currency exchange rate series model**
@JsonSerializable(explicitToJson: true)
class ArrayOfAvgExchangeRatesTable extends ArrayOfExchangeRatesTable {
  final List<AvgExchangeRatesTable> exchangeRatesTables;

  ArrayOfAvgExchangeRatesTable({
    required this.exchangeRatesTables,
  });

  factory ArrayOfAvgExchangeRatesTable.fromJson(Map<String, dynamic> json) {
    return _$ArrayOfAvgExchangeRatesTableFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ArrayOfAvgExchangeRatesTableToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ArrayOfBidAskExchangeRatesTable extends ArrayOfExchangeRatesTable {
  final List<BidAskExchangeRatesTable> exchangeRatesTables;

  ArrayOfBidAskExchangeRatesTable({
    required this.exchangeRatesTables,
  });

  factory ArrayOfBidAskExchangeRatesTable.fromJson(Map<String, dynamic> json) {
    return _$ArrayOfBidAskExchangeRatesTableFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ArrayOfBidAskExchangeRatesTableToJson(this);
}
