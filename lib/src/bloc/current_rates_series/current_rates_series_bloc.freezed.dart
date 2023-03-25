// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_rates_series_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurrentRatesSeriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AvgExchangeRatesSeries avgSeries,
            BidAskExchangeRatesSeries bidAskSeries)
        success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AvgExchangeRatesSeries avgSeries,
            BidAskExchangeRatesSeries bidAskSeries)?
        success,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AvgExchangeRatesSeries avgSeries,
            BidAskExchangeRatesSeries bidAskSeries)?
        success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentRatesSeriesStateCopyWith<$Res> {
  factory $CurrentRatesSeriesStateCopyWith(CurrentRatesSeriesState value,
          $Res Function(CurrentRatesSeriesState) then) =
      _$CurrentRatesSeriesStateCopyWithImpl<$Res, CurrentRatesSeriesState>;
}

/// @nodoc
class _$CurrentRatesSeriesStateCopyWithImpl<$Res,
        $Val extends CurrentRatesSeriesState>
    implements $CurrentRatesSeriesStateCopyWith<$Res> {
  _$CurrentRatesSeriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CurrentRatesSeriesStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CurrentRatesSeriesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AvgExchangeRatesSeries avgSeries,
            BidAskExchangeRatesSeries bidAskSeries)
        success,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AvgExchangeRatesSeries avgSeries,
            BidAskExchangeRatesSeries bidAskSeries)?
        success,
    TResult? Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AvgExchangeRatesSeries avgSeries,
            BidAskExchangeRatesSeries bidAskSeries)?
        success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CurrentRatesSeriesState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$CurrentRatesSeriesStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'CurrentRatesSeriesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AvgExchangeRatesSeries avgSeries,
            BidAskExchangeRatesSeries bidAskSeries)
        success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AvgExchangeRatesSeries avgSeries,
            BidAskExchangeRatesSeries bidAskSeries)?
        success,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AvgExchangeRatesSeries avgSeries,
            BidAskExchangeRatesSeries bidAskSeries)?
        success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CurrentRatesSeriesState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {AvgExchangeRatesSeries avgSeries,
      BidAskExchangeRatesSeries bidAskSeries});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$CurrentRatesSeriesStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avgSeries = null,
    Object? bidAskSeries = null,
  }) {
    return _then(_$_Success(
      null == avgSeries
          ? _value.avgSeries
          : avgSeries // ignore: cast_nullable_to_non_nullable
              as AvgExchangeRatesSeries,
      null == bidAskSeries
          ? _value.bidAskSeries
          : bidAskSeries // ignore: cast_nullable_to_non_nullable
              as BidAskExchangeRatesSeries,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(this.avgSeries, this.bidAskSeries);

  @override
  final AvgExchangeRatesSeries avgSeries;
  @override
  final BidAskExchangeRatesSeries bidAskSeries;

  @override
  String toString() {
    return 'CurrentRatesSeriesState.success(avgSeries: $avgSeries, bidAskSeries: $bidAskSeries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.avgSeries, avgSeries) ||
                other.avgSeries == avgSeries) &&
            (identical(other.bidAskSeries, bidAskSeries) ||
                other.bidAskSeries == bidAskSeries));
  }

  @override
  int get hashCode => Object.hash(runtimeType, avgSeries, bidAskSeries);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AvgExchangeRatesSeries avgSeries,
            BidAskExchangeRatesSeries bidAskSeries)
        success,
    required TResult Function(String error) failure,
  }) {
    return success(avgSeries, bidAskSeries);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AvgExchangeRatesSeries avgSeries,
            BidAskExchangeRatesSeries bidAskSeries)?
        success,
    TResult? Function(String error)? failure,
  }) {
    return success?.call(avgSeries, bidAskSeries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AvgExchangeRatesSeries avgSeries,
            BidAskExchangeRatesSeries bidAskSeries)?
        success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(avgSeries, bidAskSeries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements CurrentRatesSeriesState {
  const factory _Success(final AvgExchangeRatesSeries avgSeries,
      final BidAskExchangeRatesSeries bidAskSeries) = _$_Success;

  AvgExchangeRatesSeries get avgSeries;
  BidAskExchangeRatesSeries get bidAskSeries;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$CurrentRatesSeriesStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_Failure(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CurrentRatesSeriesState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AvgExchangeRatesSeries avgSeries,
            BidAskExchangeRatesSeries bidAskSeries)
        success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AvgExchangeRatesSeries avgSeries,
            BidAskExchangeRatesSeries bidAskSeries)?
        success,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AvgExchangeRatesSeries avgSeries,
            BidAskExchangeRatesSeries bidAskSeries)?
        success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements CurrentRatesSeriesState {
  const factory _Failure(final String error) = _$_Failure;

  String get error;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CurrentRatesSeriesEvent {
  String get code => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) loadCurrentRateSeries,
    required TResult Function(String code) reloadCurrentRateSeries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? loadCurrentRateSeries,
    TResult? Function(String code)? reloadCurrentRateSeries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? loadCurrentRateSeries,
    TResult Function(String code)? reloadCurrentRateSeries,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCurrentRateSeries value)
        loadCurrentRateSeries,
    required TResult Function(ReloadCurrentRateSeries value)
        reloadCurrentRateSeries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCurrentRateSeries value)? loadCurrentRateSeries,
    TResult? Function(ReloadCurrentRateSeries value)? reloadCurrentRateSeries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCurrentRateSeries value)? loadCurrentRateSeries,
    TResult Function(ReloadCurrentRateSeries value)? reloadCurrentRateSeries,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrentRatesSeriesEventCopyWith<CurrentRatesSeriesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentRatesSeriesEventCopyWith<$Res> {
  factory $CurrentRatesSeriesEventCopyWith(CurrentRatesSeriesEvent value,
          $Res Function(CurrentRatesSeriesEvent) then) =
      _$CurrentRatesSeriesEventCopyWithImpl<$Res, CurrentRatesSeriesEvent>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class _$CurrentRatesSeriesEventCopyWithImpl<$Res,
        $Val extends CurrentRatesSeriesEvent>
    implements $CurrentRatesSeriesEventCopyWith<$Res> {
  _$CurrentRatesSeriesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadCurrentRateSeriesCopyWith<$Res>
    implements $CurrentRatesSeriesEventCopyWith<$Res> {
  factory _$$LoadCurrentRateSeriesCopyWith(_$LoadCurrentRateSeries value,
          $Res Function(_$LoadCurrentRateSeries) then) =
      __$$LoadCurrentRateSeriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$LoadCurrentRateSeriesCopyWithImpl<$Res>
    extends _$CurrentRatesSeriesEventCopyWithImpl<$Res, _$LoadCurrentRateSeries>
    implements _$$LoadCurrentRateSeriesCopyWith<$Res> {
  __$$LoadCurrentRateSeriesCopyWithImpl(_$LoadCurrentRateSeries _value,
      $Res Function(_$LoadCurrentRateSeries) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$LoadCurrentRateSeries(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadCurrentRateSeries implements LoadCurrentRateSeries {
  _$LoadCurrentRateSeries({required this.code});

  @override
  final String code;

  @override
  String toString() {
    return 'CurrentRatesSeriesEvent.loadCurrentRateSeries(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCurrentRateSeries &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadCurrentRateSeriesCopyWith<_$LoadCurrentRateSeries> get copyWith =>
      __$$LoadCurrentRateSeriesCopyWithImpl<_$LoadCurrentRateSeries>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) loadCurrentRateSeries,
    required TResult Function(String code) reloadCurrentRateSeries,
  }) {
    return loadCurrentRateSeries(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? loadCurrentRateSeries,
    TResult? Function(String code)? reloadCurrentRateSeries,
  }) {
    return loadCurrentRateSeries?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? loadCurrentRateSeries,
    TResult Function(String code)? reloadCurrentRateSeries,
    required TResult orElse(),
  }) {
    if (loadCurrentRateSeries != null) {
      return loadCurrentRateSeries(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCurrentRateSeries value)
        loadCurrentRateSeries,
    required TResult Function(ReloadCurrentRateSeries value)
        reloadCurrentRateSeries,
  }) {
    return loadCurrentRateSeries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCurrentRateSeries value)? loadCurrentRateSeries,
    TResult? Function(ReloadCurrentRateSeries value)? reloadCurrentRateSeries,
  }) {
    return loadCurrentRateSeries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCurrentRateSeries value)? loadCurrentRateSeries,
    TResult Function(ReloadCurrentRateSeries value)? reloadCurrentRateSeries,
    required TResult orElse(),
  }) {
    if (loadCurrentRateSeries != null) {
      return loadCurrentRateSeries(this);
    }
    return orElse();
  }
}

abstract class LoadCurrentRateSeries implements CurrentRatesSeriesEvent {
  factory LoadCurrentRateSeries({required final String code}) =
      _$LoadCurrentRateSeries;

  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$LoadCurrentRateSeriesCopyWith<_$LoadCurrentRateSeries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReloadCurrentRateSeriesCopyWith<$Res>
    implements $CurrentRatesSeriesEventCopyWith<$Res> {
  factory _$$ReloadCurrentRateSeriesCopyWith(_$ReloadCurrentRateSeries value,
          $Res Function(_$ReloadCurrentRateSeries) then) =
      __$$ReloadCurrentRateSeriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$ReloadCurrentRateSeriesCopyWithImpl<$Res>
    extends _$CurrentRatesSeriesEventCopyWithImpl<$Res,
        _$ReloadCurrentRateSeries>
    implements _$$ReloadCurrentRateSeriesCopyWith<$Res> {
  __$$ReloadCurrentRateSeriesCopyWithImpl(_$ReloadCurrentRateSeries _value,
      $Res Function(_$ReloadCurrentRateSeries) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$ReloadCurrentRateSeries(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReloadCurrentRateSeries implements ReloadCurrentRateSeries {
  _$ReloadCurrentRateSeries({required this.code});

  @override
  final String code;

  @override
  String toString() {
    return 'CurrentRatesSeriesEvent.reloadCurrentRateSeries(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReloadCurrentRateSeries &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReloadCurrentRateSeriesCopyWith<_$ReloadCurrentRateSeries> get copyWith =>
      __$$ReloadCurrentRateSeriesCopyWithImpl<_$ReloadCurrentRateSeries>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) loadCurrentRateSeries,
    required TResult Function(String code) reloadCurrentRateSeries,
  }) {
    return reloadCurrentRateSeries(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? loadCurrentRateSeries,
    TResult? Function(String code)? reloadCurrentRateSeries,
  }) {
    return reloadCurrentRateSeries?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? loadCurrentRateSeries,
    TResult Function(String code)? reloadCurrentRateSeries,
    required TResult orElse(),
  }) {
    if (reloadCurrentRateSeries != null) {
      return reloadCurrentRateSeries(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCurrentRateSeries value)
        loadCurrentRateSeries,
    required TResult Function(ReloadCurrentRateSeries value)
        reloadCurrentRateSeries,
  }) {
    return reloadCurrentRateSeries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCurrentRateSeries value)? loadCurrentRateSeries,
    TResult? Function(ReloadCurrentRateSeries value)? reloadCurrentRateSeries,
  }) {
    return reloadCurrentRateSeries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCurrentRateSeries value)? loadCurrentRateSeries,
    TResult Function(ReloadCurrentRateSeries value)? reloadCurrentRateSeries,
    required TResult orElse(),
  }) {
    if (reloadCurrentRateSeries != null) {
      return reloadCurrentRateSeries(this);
    }
    return orElse();
  }
}

abstract class ReloadCurrentRateSeries implements CurrentRatesSeriesEvent {
  factory ReloadCurrentRateSeries({required final String code}) =
      _$ReloadCurrentRateSeries;

  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$ReloadCurrentRateSeriesCopyWith<_$ReloadCurrentRateSeries> get copyWith =>
      throw _privateConstructorUsedError;
}
