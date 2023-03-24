// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:extchange/src/bloc/current_rates_series/current_rates_series_bloc.dart'
    as _i10;
import 'package:extchange/src/bloc/rates_series/rates_series_bloc.dart' as _i11;
import 'package:extchange/src/bloc/rates_tables/rates_tables_bloc.dart' as _i12;
import 'package:extchange/src/services/data/clients/rates_series_client.dart'
    as _i6;
import 'package:extchange/src/services/data/clients/rates_tables_client.dart'
    as _i8;
import 'package:extchange/src/services/data/config.dart' as _i4;
import 'package:extchange/src/services/data/repos/rates_series_repo.dart'
    as _i7;
import 'package:extchange/src/services/data/repos/rates_tables_repo.dart'
    as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import '../data/dio_provider.dart' as _i13;
import '../navigation/router.dart' as _i14;

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
  final routerInjectionModule = _$RouterInjectionModule();
  final dioProvider = _$DioProvider();
  gh.singleton<_i3.GoRouter>(routerInjectionModule.router);
  gh.factory<_i4.IConfig>(() => _i4.AppConfig());
  gh.singleton<_i5.Dio>(dioProvider.dio(gh<_i4.IConfig>()));
  gh.factory<_i6.RatesSeriesClient>(
    () => _i6.ProdRatesSeriesClient(
      dio: gh<_i5.Dio>(),
      config: gh<_i4.IConfig>(),
    ),
    registerFor: {_prod},
  );
  gh.factory<_i7.RatesSeriesRepo>(
    () => _i7.ProdRatesSeries(client: gh<_i6.RatesSeriesClient>()),
    registerFor: {_prod},
  );
  gh.factory<_i8.RatesTablesClient>(
    () => _i8.ProdRatesTablesClient(
      dio: gh<_i5.Dio>(),
      config: gh<_i4.IConfig>(),
    ),
    registerFor: {_prod},
  );
  gh.factory<_i9.RatesTablesRepo>(
    () => _i9.ProdRatesTables(client: gh<_i8.RatesTablesClient>()),
    registerFor: {_prod},
  );
  gh.factory<_i10.CurrentRatesSeriesBloc>(
      () => _i10.CurrentRatesSeriesBloc(gh<_i7.RatesSeriesRepo>()));
  gh.factory<_i11.RatesSeriesBloc>(
      () => _i11.RatesSeriesBloc(gh<_i7.RatesSeriesRepo>()));
  gh.factory<_i12.RatesTablesBloc>(
      () => _i12.RatesTablesBloc(gh<_i9.RatesTablesRepo>()));
  return getIt;
}

class _$DioProvider extends _i13.DioProvider {}

class _$RouterInjectionModule extends _i14.RouterInjectionModule {}
