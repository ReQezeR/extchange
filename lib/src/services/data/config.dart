import 'package:injectable/injectable.dart';

abstract class IConfig {
  String get baseUrl;

  Map<String, String> get headers;

  Map<String, String> get queryParameters;
}

@Injectable(as: IConfig)
class AppConfig extends IConfig {
  @override
  String get baseUrl => "http://api.nbp.pl/api/";

  @override
  Map<String, String> get headers => {};

  @override
  Map<String, String> get queryParameters => {'format': 'json'};
}
