import 'package:json_annotation/json_annotation.dart';
part 'rate_tables.g.dart';

///**Currency exchange rate series model**
@JsonSerializable(explicitToJson: true)
class RateTables {
  final String currency;
  final String code;
  final String mid;

  RateTables({
    required this.currency,
    required this.code,
    required this.mid,
  });

  factory RateTables.fromJson(Map<String, dynamic> json) {
    return _$RateTablesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RateTablesToJson(this);
}
