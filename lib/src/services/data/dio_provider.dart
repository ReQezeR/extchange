import 'package:extchange/src/services/data/config.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

@module
abstract class DioProvider {
  @singleton
  Dio dio(IConfig config) {
    Dio dio = Dio();
    dio.options.headers = config.headers;
    dio.options.queryParameters = config.queryParameters;
    return dio;
  }
}
