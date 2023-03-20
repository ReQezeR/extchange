// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:extchange/src/services/data/clients/rates_series_client.dart'
    as _i5;
import 'package:extchange/src/services/data/clients/rates_tables_client.dart'
    as _i7;
import 'package:extchange/src/services/data/config.dart' as _i3;
import 'package:extchange/src/services/data/repos/rates_series_repo.dart'
    as _i6;
import 'package:extchange/src/services/data/repos/rates_tables_repo.dart'
    as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/dio_provider.dart' as _i9;

const String _prod = 'prod';

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final dioProvider = _$DioProvider();
  gh.factory<_i3.IConfig>(() => _i3.AppConfig());
  gh.singleton<_i4.Dio>(dioProvider.dio(gh<_i3.IConfig>()));
  gh.factory<_i5.RatesSeriesClient>(
    () => _i5.ProdRatesSeriesClient(
      dio: gh<_i4.Dio>(),
      config: gh<_i3.IConfig>(),
    ),
    registerFor: {_prod},
  );
  gh.factory<_i6.RatesSeriesRepo>(
      () => _i6.ProdRatesSeries(client: gh<_i5.RatesSeriesClient>()));
  gh.factory<_i7.RatesTablesClient>(
    () => _i7.ProdRatesTablesClient(
      dio: gh<_i4.Dio>(),
      config: gh<_i3.IConfig>(),
    ),
    registerFor: {_prod},
  );
  gh.factory<_i8.RatesTablesRepo>(
      () => _i8.ProdRatesTables(client: gh<_i7.RatesTablesClient>()));
  return getIt;
}

class _$DioProvider extends _i9.DioProvider {}
