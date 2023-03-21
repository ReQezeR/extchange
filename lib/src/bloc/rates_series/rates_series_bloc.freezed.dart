// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rates_series_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RatesSeriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ExchangeRatesSeries series) success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ExchangeRatesSeries series)? success,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ExchangeRatesSeries series)? success,
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
abstract class $RatesSeriesStateCopyWith<$Res> {
  factory $RatesSeriesStateCopyWith(
          RatesSeriesState value, $Res Function(RatesSeriesState) then) =
      _$RatesSeriesStateCopyWithImpl<$Res, RatesSeriesState>;
}

/// @nodoc
class _$RatesSeriesStateCopyWithImpl<$Res, $Val extends RatesSeriesState>
    implements $RatesSeriesStateCopyWith<$Res> {
  _$RatesSeriesStateCopyWithImpl(this._value, this._then);

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
    extends _$RatesSeriesStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'RatesSeriesState.initial()';
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
    required TResult Function(ExchangeRatesSeries series) success,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ExchangeRatesSeries series)? success,
    TResult? Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ExchangeRatesSeries series)? success,
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

abstract class _Initial implements RatesSeriesState {
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
    extends _$RatesSeriesStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'RatesSeriesState.loading()';
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
    required TResult Function(ExchangeRatesSeries series) success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ExchangeRatesSeries series)? success,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ExchangeRatesSeries series)? success,
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

abstract class _Loading implements RatesSeriesState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({ExchangeRatesSeries series});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$RatesSeriesStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? series = null,
  }) {
    return _then(_$_Success(
      null == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as ExchangeRatesSeries,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(this.series);

  @override
  final ExchangeRatesSeries series;

  @override
  String toString() {
    return 'RatesSeriesState.success(series: $series)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.series, series) || other.series == series));
  }

  @override
  int get hashCode => Object.hash(runtimeType, series);

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
    required TResult Function(ExchangeRatesSeries series) success,
    required TResult Function(String error) failure,
  }) {
    return success(series);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ExchangeRatesSeries series)? success,
    TResult? Function(String error)? failure,
  }) {
    return success?.call(series);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ExchangeRatesSeries series)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(series);
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

abstract class _Success implements RatesSeriesState {
  const factory _Success(final ExchangeRatesSeries series) = _$_Success;

  ExchangeRatesSeries get series;
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
    extends _$RatesSeriesStateCopyWithImpl<$Res, _$_Failure>
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
    return 'RatesSeriesState.failure(error: $error)';
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
    required TResult Function(ExchangeRatesSeries series) success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ExchangeRatesSeries series)? success,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ExchangeRatesSeries series)? success,
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

abstract class _Failure implements RatesSeriesState {
  const factory _Failure(final String error) = _$_Failure;

  String get error;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RatesSeriesEvent {
  String get code => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, DateTime startDate, DateTime endDate)
        getCurrencyRateSeries,
    required TResult Function(String code) getCurrentAvgRateSeries,
    required TResult Function(String code) getCurrentBidAskRateSeries,
    required TResult Function(String code) getLastMonthAvgRateSeries,
    required TResult Function(String code) getLastMonthBidAskRateSeries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, DateTime startDate, DateTime endDate)?
        getCurrencyRateSeries,
    TResult? Function(String code)? getCurrentAvgRateSeries,
    TResult? Function(String code)? getCurrentBidAskRateSeries,
    TResult? Function(String code)? getLastMonthAvgRateSeries,
    TResult? Function(String code)? getLastMonthBidAskRateSeries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, DateTime startDate, DateTime endDate)?
        getCurrencyRateSeries,
    TResult Function(String code)? getCurrentAvgRateSeries,
    TResult Function(String code)? getCurrentBidAskRateSeries,
    TResult Function(String code)? getLastMonthAvgRateSeries,
    TResult Function(String code)? getLastMonthBidAskRateSeries,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyRateSeries value) getCurrencyRateSeries,
    required TResult Function(CurrentAvgRateSeries value)
        getCurrentAvgRateSeries,
    required TResult Function(CurrentBidAskRateSeries value)
        getCurrentBidAskRateSeries,
    required TResult Function(LastMonthAvgRateSeries value)
        getLastMonthAvgRateSeries,
    required TResult Function(LastMonthBidAskRateSeries value)
        getLastMonthBidAskRateSeries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyRateSeries value)? getCurrencyRateSeries,
    TResult? Function(CurrentAvgRateSeries value)? getCurrentAvgRateSeries,
    TResult? Function(CurrentBidAskRateSeries value)?
        getCurrentBidAskRateSeries,
    TResult? Function(LastMonthAvgRateSeries value)? getLastMonthAvgRateSeries,
    TResult? Function(LastMonthBidAskRateSeries value)?
        getLastMonthBidAskRateSeries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyRateSeries value)? getCurrencyRateSeries,
    TResult Function(CurrentAvgRateSeries value)? getCurrentAvgRateSeries,
    TResult Function(CurrentBidAskRateSeries value)? getCurrentBidAskRateSeries,
    TResult Function(LastMonthAvgRateSeries value)? getLastMonthAvgRateSeries,
    TResult Function(LastMonthBidAskRateSeries value)?
        getLastMonthBidAskRateSeries,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RatesSeriesEventCopyWith<RatesSeriesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatesSeriesEventCopyWith<$Res> {
  factory $RatesSeriesEventCopyWith(
          RatesSeriesEvent value, $Res Function(RatesSeriesEvent) then) =
      _$RatesSeriesEventCopyWithImpl<$Res, RatesSeriesEvent>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class _$RatesSeriesEventCopyWithImpl<$Res, $Val extends RatesSeriesEvent>
    implements $RatesSeriesEventCopyWith<$Res> {
  _$RatesSeriesEventCopyWithImpl(this._value, this._then);

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
abstract class _$$CurrencyRateSeriesCopyWith<$Res>
    implements $RatesSeriesEventCopyWith<$Res> {
  factory _$$CurrencyRateSeriesCopyWith(_$CurrencyRateSeries value,
          $Res Function(_$CurrencyRateSeries) then) =
      __$$CurrencyRateSeriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, DateTime startDate, DateTime endDate});
}

/// @nodoc
class __$$CurrencyRateSeriesCopyWithImpl<$Res>
    extends _$RatesSeriesEventCopyWithImpl<$Res, _$CurrencyRateSeries>
    implements _$$CurrencyRateSeriesCopyWith<$Res> {
  __$$CurrencyRateSeriesCopyWithImpl(
      _$CurrencyRateSeries _value, $Res Function(_$CurrencyRateSeries) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_$CurrencyRateSeries(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$CurrencyRateSeries implements CurrencyRateSeries {
  _$CurrencyRateSeries(
      {required this.code, required this.startDate, required this.endDate});

  @override
  final String code;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;

  @override
  String toString() {
    return 'RatesSeriesEvent.getCurrencyRateSeries(code: $code, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyRateSeries &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, startDate, endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyRateSeriesCopyWith<_$CurrencyRateSeries> get copyWith =>
      __$$CurrencyRateSeriesCopyWithImpl<_$CurrencyRateSeries>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, DateTime startDate, DateTime endDate)
        getCurrencyRateSeries,
    required TResult Function(String code) getCurrentAvgRateSeries,
    required TResult Function(String code) getCurrentBidAskRateSeries,
    required TResult Function(String code) getLastMonthAvgRateSeries,
    required TResult Function(String code) getLastMonthBidAskRateSeries,
  }) {
    return getCurrencyRateSeries(code, startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, DateTime startDate, DateTime endDate)?
        getCurrencyRateSeries,
    TResult? Function(String code)? getCurrentAvgRateSeries,
    TResult? Function(String code)? getCurrentBidAskRateSeries,
    TResult? Function(String code)? getLastMonthAvgRateSeries,
    TResult? Function(String code)? getLastMonthBidAskRateSeries,
  }) {
    return getCurrencyRateSeries?.call(code, startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, DateTime startDate, DateTime endDate)?
        getCurrencyRateSeries,
    TResult Function(String code)? getCurrentAvgRateSeries,
    TResult Function(String code)? getCurrentBidAskRateSeries,
    TResult Function(String code)? getLastMonthAvgRateSeries,
    TResult Function(String code)? getLastMonthBidAskRateSeries,
    required TResult orElse(),
  }) {
    if (getCurrencyRateSeries != null) {
      return getCurrencyRateSeries(code, startDate, endDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyRateSeries value) getCurrencyRateSeries,
    required TResult Function(CurrentAvgRateSeries value)
        getCurrentAvgRateSeries,
    required TResult Function(CurrentBidAskRateSeries value)
        getCurrentBidAskRateSeries,
    required TResult Function(LastMonthAvgRateSeries value)
        getLastMonthAvgRateSeries,
    required TResult Function(LastMonthBidAskRateSeries value)
        getLastMonthBidAskRateSeries,
  }) {
    return getCurrencyRateSeries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyRateSeries value)? getCurrencyRateSeries,
    TResult? Function(CurrentAvgRateSeries value)? getCurrentAvgRateSeries,
    TResult? Function(CurrentBidAskRateSeries value)?
        getCurrentBidAskRateSeries,
    TResult? Function(LastMonthAvgRateSeries value)? getLastMonthAvgRateSeries,
    TResult? Function(LastMonthBidAskRateSeries value)?
        getLastMonthBidAskRateSeries,
  }) {
    return getCurrencyRateSeries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyRateSeries value)? getCurrencyRateSeries,
    TResult Function(CurrentAvgRateSeries value)? getCurrentAvgRateSeries,
    TResult Function(CurrentBidAskRateSeries value)? getCurrentBidAskRateSeries,
    TResult Function(LastMonthAvgRateSeries value)? getLastMonthAvgRateSeries,
    TResult Function(LastMonthBidAskRateSeries value)?
        getLastMonthBidAskRateSeries,
    required TResult orElse(),
  }) {
    if (getCurrencyRateSeries != null) {
      return getCurrencyRateSeries(this);
    }
    return orElse();
  }
}

abstract class CurrencyRateSeries implements RatesSeriesEvent {
  factory CurrencyRateSeries(
      {required final String code,
      required final DateTime startDate,
      required final DateTime endDate}) = _$CurrencyRateSeries;

  @override
  String get code;
  DateTime get startDate;
  DateTime get endDate;
  @override
  @JsonKey(ignore: true)
  _$$CurrencyRateSeriesCopyWith<_$CurrencyRateSeries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CurrentAvgRateSeriesCopyWith<$Res>
    implements $RatesSeriesEventCopyWith<$Res> {
  factory _$$CurrentAvgRateSeriesCopyWith(_$CurrentAvgRateSeries value,
          $Res Function(_$CurrentAvgRateSeries) then) =
      __$$CurrentAvgRateSeriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$CurrentAvgRateSeriesCopyWithImpl<$Res>
    extends _$RatesSeriesEventCopyWithImpl<$Res, _$CurrentAvgRateSeries>
    implements _$$CurrentAvgRateSeriesCopyWith<$Res> {
  __$$CurrentAvgRateSeriesCopyWithImpl(_$CurrentAvgRateSeries _value,
      $Res Function(_$CurrentAvgRateSeries) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$CurrentAvgRateSeries(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CurrentAvgRateSeries implements CurrentAvgRateSeries {
  _$CurrentAvgRateSeries({required this.code});

  @override
  final String code;

  @override
  String toString() {
    return 'RatesSeriesEvent.getCurrentAvgRateSeries(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentAvgRateSeries &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentAvgRateSeriesCopyWith<_$CurrentAvgRateSeries> get copyWith =>
      __$$CurrentAvgRateSeriesCopyWithImpl<_$CurrentAvgRateSeries>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, DateTime startDate, DateTime endDate)
        getCurrencyRateSeries,
    required TResult Function(String code) getCurrentAvgRateSeries,
    required TResult Function(String code) getCurrentBidAskRateSeries,
    required TResult Function(String code) getLastMonthAvgRateSeries,
    required TResult Function(String code) getLastMonthBidAskRateSeries,
  }) {
    return getCurrentAvgRateSeries(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, DateTime startDate, DateTime endDate)?
        getCurrencyRateSeries,
    TResult? Function(String code)? getCurrentAvgRateSeries,
    TResult? Function(String code)? getCurrentBidAskRateSeries,
    TResult? Function(String code)? getLastMonthAvgRateSeries,
    TResult? Function(String code)? getLastMonthBidAskRateSeries,
  }) {
    return getCurrentAvgRateSeries?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, DateTime startDate, DateTime endDate)?
        getCurrencyRateSeries,
    TResult Function(String code)? getCurrentAvgRateSeries,
    TResult Function(String code)? getCurrentBidAskRateSeries,
    TResult Function(String code)? getLastMonthAvgRateSeries,
    TResult Function(String code)? getLastMonthBidAskRateSeries,
    required TResult orElse(),
  }) {
    if (getCurrentAvgRateSeries != null) {
      return getCurrentAvgRateSeries(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyRateSeries value) getCurrencyRateSeries,
    required TResult Function(CurrentAvgRateSeries value)
        getCurrentAvgRateSeries,
    required TResult Function(CurrentBidAskRateSeries value)
        getCurrentBidAskRateSeries,
    required TResult Function(LastMonthAvgRateSeries value)
        getLastMonthAvgRateSeries,
    required TResult Function(LastMonthBidAskRateSeries value)
        getLastMonthBidAskRateSeries,
  }) {
    return getCurrentAvgRateSeries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyRateSeries value)? getCurrencyRateSeries,
    TResult? Function(CurrentAvgRateSeries value)? getCurrentAvgRateSeries,
    TResult? Function(CurrentBidAskRateSeries value)?
        getCurrentBidAskRateSeries,
    TResult? Function(LastMonthAvgRateSeries value)? getLastMonthAvgRateSeries,
    TResult? Function(LastMonthBidAskRateSeries value)?
        getLastMonthBidAskRateSeries,
  }) {
    return getCurrentAvgRateSeries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyRateSeries value)? getCurrencyRateSeries,
    TResult Function(CurrentAvgRateSeries value)? getCurrentAvgRateSeries,
    TResult Function(CurrentBidAskRateSeries value)? getCurrentBidAskRateSeries,
    TResult Function(LastMonthAvgRateSeries value)? getLastMonthAvgRateSeries,
    TResult Function(LastMonthBidAskRateSeries value)?
        getLastMonthBidAskRateSeries,
    required TResult orElse(),
  }) {
    if (getCurrentAvgRateSeries != null) {
      return getCurrentAvgRateSeries(this);
    }
    return orElse();
  }
}

abstract class CurrentAvgRateSeries implements RatesSeriesEvent {
  factory CurrentAvgRateSeries({required final String code}) =
      _$CurrentAvgRateSeries;

  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$CurrentAvgRateSeriesCopyWith<_$CurrentAvgRateSeries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CurrentBidAskRateSeriesCopyWith<$Res>
    implements $RatesSeriesEventCopyWith<$Res> {
  factory _$$CurrentBidAskRateSeriesCopyWith(_$CurrentBidAskRateSeries value,
          $Res Function(_$CurrentBidAskRateSeries) then) =
      __$$CurrentBidAskRateSeriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$CurrentBidAskRateSeriesCopyWithImpl<$Res>
    extends _$RatesSeriesEventCopyWithImpl<$Res, _$CurrentBidAskRateSeries>
    implements _$$CurrentBidAskRateSeriesCopyWith<$Res> {
  __$$CurrentBidAskRateSeriesCopyWithImpl(_$CurrentBidAskRateSeries _value,
      $Res Function(_$CurrentBidAskRateSeries) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$CurrentBidAskRateSeries(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CurrentBidAskRateSeries implements CurrentBidAskRateSeries {
  _$CurrentBidAskRateSeries({required this.code});

  @override
  final String code;

  @override
  String toString() {
    return 'RatesSeriesEvent.getCurrentBidAskRateSeries(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentBidAskRateSeries &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentBidAskRateSeriesCopyWith<_$CurrentBidAskRateSeries> get copyWith =>
      __$$CurrentBidAskRateSeriesCopyWithImpl<_$CurrentBidAskRateSeries>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, DateTime startDate, DateTime endDate)
        getCurrencyRateSeries,
    required TResult Function(String code) getCurrentAvgRateSeries,
    required TResult Function(String code) getCurrentBidAskRateSeries,
    required TResult Function(String code) getLastMonthAvgRateSeries,
    required TResult Function(String code) getLastMonthBidAskRateSeries,
  }) {
    return getCurrentBidAskRateSeries(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, DateTime startDate, DateTime endDate)?
        getCurrencyRateSeries,
    TResult? Function(String code)? getCurrentAvgRateSeries,
    TResult? Function(String code)? getCurrentBidAskRateSeries,
    TResult? Function(String code)? getLastMonthAvgRateSeries,
    TResult? Function(String code)? getLastMonthBidAskRateSeries,
  }) {
    return getCurrentBidAskRateSeries?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, DateTime startDate, DateTime endDate)?
        getCurrencyRateSeries,
    TResult Function(String code)? getCurrentAvgRateSeries,
    TResult Function(String code)? getCurrentBidAskRateSeries,
    TResult Function(String code)? getLastMonthAvgRateSeries,
    TResult Function(String code)? getLastMonthBidAskRateSeries,
    required TResult orElse(),
  }) {
    if (getCurrentBidAskRateSeries != null) {
      return getCurrentBidAskRateSeries(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyRateSeries value) getCurrencyRateSeries,
    required TResult Function(CurrentAvgRateSeries value)
        getCurrentAvgRateSeries,
    required TResult Function(CurrentBidAskRateSeries value)
        getCurrentBidAskRateSeries,
    required TResult Function(LastMonthAvgRateSeries value)
        getLastMonthAvgRateSeries,
    required TResult Function(LastMonthBidAskRateSeries value)
        getLastMonthBidAskRateSeries,
  }) {
    return getCurrentBidAskRateSeries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyRateSeries value)? getCurrencyRateSeries,
    TResult? Function(CurrentAvgRateSeries value)? getCurrentAvgRateSeries,
    TResult? Function(CurrentBidAskRateSeries value)?
        getCurrentBidAskRateSeries,
    TResult? Function(LastMonthAvgRateSeries value)? getLastMonthAvgRateSeries,
    TResult? Function(LastMonthBidAskRateSeries value)?
        getLastMonthBidAskRateSeries,
  }) {
    return getCurrentBidAskRateSeries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyRateSeries value)? getCurrencyRateSeries,
    TResult Function(CurrentAvgRateSeries value)? getCurrentAvgRateSeries,
    TResult Function(CurrentBidAskRateSeries value)? getCurrentBidAskRateSeries,
    TResult Function(LastMonthAvgRateSeries value)? getLastMonthAvgRateSeries,
    TResult Function(LastMonthBidAskRateSeries value)?
        getLastMonthBidAskRateSeries,
    required TResult orElse(),
  }) {
    if (getCurrentBidAskRateSeries != null) {
      return getCurrentBidAskRateSeries(this);
    }
    return orElse();
  }
}

abstract class CurrentBidAskRateSeries implements RatesSeriesEvent {
  factory CurrentBidAskRateSeries({required final String code}) =
      _$CurrentBidAskRateSeries;

  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$CurrentBidAskRateSeriesCopyWith<_$CurrentBidAskRateSeries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LastMonthAvgRateSeriesCopyWith<$Res>
    implements $RatesSeriesEventCopyWith<$Res> {
  factory _$$LastMonthAvgRateSeriesCopyWith(_$LastMonthAvgRateSeries value,
          $Res Function(_$LastMonthAvgRateSeries) then) =
      __$$LastMonthAvgRateSeriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$LastMonthAvgRateSeriesCopyWithImpl<$Res>
    extends _$RatesSeriesEventCopyWithImpl<$Res, _$LastMonthAvgRateSeries>
    implements _$$LastMonthAvgRateSeriesCopyWith<$Res> {
  __$$LastMonthAvgRateSeriesCopyWithImpl(_$LastMonthAvgRateSeries _value,
      $Res Function(_$LastMonthAvgRateSeries) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$LastMonthAvgRateSeries(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LastMonthAvgRateSeries implements LastMonthAvgRateSeries {
  _$LastMonthAvgRateSeries({required this.code});

  @override
  final String code;

  @override
  String toString() {
    return 'RatesSeriesEvent.getLastMonthAvgRateSeries(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastMonthAvgRateSeries &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LastMonthAvgRateSeriesCopyWith<_$LastMonthAvgRateSeries> get copyWith =>
      __$$LastMonthAvgRateSeriesCopyWithImpl<_$LastMonthAvgRateSeries>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, DateTime startDate, DateTime endDate)
        getCurrencyRateSeries,
    required TResult Function(String code) getCurrentAvgRateSeries,
    required TResult Function(String code) getCurrentBidAskRateSeries,
    required TResult Function(String code) getLastMonthAvgRateSeries,
    required TResult Function(String code) getLastMonthBidAskRateSeries,
  }) {
    return getLastMonthAvgRateSeries(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, DateTime startDate, DateTime endDate)?
        getCurrencyRateSeries,
    TResult? Function(String code)? getCurrentAvgRateSeries,
    TResult? Function(String code)? getCurrentBidAskRateSeries,
    TResult? Function(String code)? getLastMonthAvgRateSeries,
    TResult? Function(String code)? getLastMonthBidAskRateSeries,
  }) {
    return getLastMonthAvgRateSeries?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, DateTime startDate, DateTime endDate)?
        getCurrencyRateSeries,
    TResult Function(String code)? getCurrentAvgRateSeries,
    TResult Function(String code)? getCurrentBidAskRateSeries,
    TResult Function(String code)? getLastMonthAvgRateSeries,
    TResult Function(String code)? getLastMonthBidAskRateSeries,
    required TResult orElse(),
  }) {
    if (getLastMonthAvgRateSeries != null) {
      return getLastMonthAvgRateSeries(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyRateSeries value) getCurrencyRateSeries,
    required TResult Function(CurrentAvgRateSeries value)
        getCurrentAvgRateSeries,
    required TResult Function(CurrentBidAskRateSeries value)
        getCurrentBidAskRateSeries,
    required TResult Function(LastMonthAvgRateSeries value)
        getLastMonthAvgRateSeries,
    required TResult Function(LastMonthBidAskRateSeries value)
        getLastMonthBidAskRateSeries,
  }) {
    return getLastMonthAvgRateSeries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyRateSeries value)? getCurrencyRateSeries,
    TResult? Function(CurrentAvgRateSeries value)? getCurrentAvgRateSeries,
    TResult? Function(CurrentBidAskRateSeries value)?
        getCurrentBidAskRateSeries,
    TResult? Function(LastMonthAvgRateSeries value)? getLastMonthAvgRateSeries,
    TResult? Function(LastMonthBidAskRateSeries value)?
        getLastMonthBidAskRateSeries,
  }) {
    return getLastMonthAvgRateSeries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyRateSeries value)? getCurrencyRateSeries,
    TResult Function(CurrentAvgRateSeries value)? getCurrentAvgRateSeries,
    TResult Function(CurrentBidAskRateSeries value)? getCurrentBidAskRateSeries,
    TResult Function(LastMonthAvgRateSeries value)? getLastMonthAvgRateSeries,
    TResult Function(LastMonthBidAskRateSeries value)?
        getLastMonthBidAskRateSeries,
    required TResult orElse(),
  }) {
    if (getLastMonthAvgRateSeries != null) {
      return getLastMonthAvgRateSeries(this);
    }
    return orElse();
  }
}

abstract class LastMonthAvgRateSeries implements RatesSeriesEvent {
  factory LastMonthAvgRateSeries({required final String code}) =
      _$LastMonthAvgRateSeries;

  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$LastMonthAvgRateSeriesCopyWith<_$LastMonthAvgRateSeries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LastMonthBidAskRateSeriesCopyWith<$Res>
    implements $RatesSeriesEventCopyWith<$Res> {
  factory _$$LastMonthBidAskRateSeriesCopyWith(
          _$LastMonthBidAskRateSeries value,
          $Res Function(_$LastMonthBidAskRateSeries) then) =
      __$$LastMonthBidAskRateSeriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$LastMonthBidAskRateSeriesCopyWithImpl<$Res>
    extends _$RatesSeriesEventCopyWithImpl<$Res, _$LastMonthBidAskRateSeries>
    implements _$$LastMonthBidAskRateSeriesCopyWith<$Res> {
  __$$LastMonthBidAskRateSeriesCopyWithImpl(_$LastMonthBidAskRateSeries _value,
      $Res Function(_$LastMonthBidAskRateSeries) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$LastMonthBidAskRateSeries(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LastMonthBidAskRateSeries implements LastMonthBidAskRateSeries {
  _$LastMonthBidAskRateSeries({required this.code});

  @override
  final String code;

  @override
  String toString() {
    return 'RatesSeriesEvent.getLastMonthBidAskRateSeries(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastMonthBidAskRateSeries &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LastMonthBidAskRateSeriesCopyWith<_$LastMonthBidAskRateSeries>
      get copyWith => __$$LastMonthBidAskRateSeriesCopyWithImpl<
          _$LastMonthBidAskRateSeries>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, DateTime startDate, DateTime endDate)
        getCurrencyRateSeries,
    required TResult Function(String code) getCurrentAvgRateSeries,
    required TResult Function(String code) getCurrentBidAskRateSeries,
    required TResult Function(String code) getLastMonthAvgRateSeries,
    required TResult Function(String code) getLastMonthBidAskRateSeries,
  }) {
    return getLastMonthBidAskRateSeries(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, DateTime startDate, DateTime endDate)?
        getCurrencyRateSeries,
    TResult? Function(String code)? getCurrentAvgRateSeries,
    TResult? Function(String code)? getCurrentBidAskRateSeries,
    TResult? Function(String code)? getLastMonthAvgRateSeries,
    TResult? Function(String code)? getLastMonthBidAskRateSeries,
  }) {
    return getLastMonthBidAskRateSeries?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, DateTime startDate, DateTime endDate)?
        getCurrencyRateSeries,
    TResult Function(String code)? getCurrentAvgRateSeries,
    TResult Function(String code)? getCurrentBidAskRateSeries,
    TResult Function(String code)? getLastMonthAvgRateSeries,
    TResult Function(String code)? getLastMonthBidAskRateSeries,
    required TResult orElse(),
  }) {
    if (getLastMonthBidAskRateSeries != null) {
      return getLastMonthBidAskRateSeries(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyRateSeries value) getCurrencyRateSeries,
    required TResult Function(CurrentAvgRateSeries value)
        getCurrentAvgRateSeries,
    required TResult Function(CurrentBidAskRateSeries value)
        getCurrentBidAskRateSeries,
    required TResult Function(LastMonthAvgRateSeries value)
        getLastMonthAvgRateSeries,
    required TResult Function(LastMonthBidAskRateSeries value)
        getLastMonthBidAskRateSeries,
  }) {
    return getLastMonthBidAskRateSeries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyRateSeries value)? getCurrencyRateSeries,
    TResult? Function(CurrentAvgRateSeries value)? getCurrentAvgRateSeries,
    TResult? Function(CurrentBidAskRateSeries value)?
        getCurrentBidAskRateSeries,
    TResult? Function(LastMonthAvgRateSeries value)? getLastMonthAvgRateSeries,
    TResult? Function(LastMonthBidAskRateSeries value)?
        getLastMonthBidAskRateSeries,
  }) {
    return getLastMonthBidAskRateSeries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyRateSeries value)? getCurrencyRateSeries,
    TResult Function(CurrentAvgRateSeries value)? getCurrentAvgRateSeries,
    TResult Function(CurrentBidAskRateSeries value)? getCurrentBidAskRateSeries,
    TResult Function(LastMonthAvgRateSeries value)? getLastMonthAvgRateSeries,
    TResult Function(LastMonthBidAskRateSeries value)?
        getLastMonthBidAskRateSeries,
    required TResult orElse(),
  }) {
    if (getLastMonthBidAskRateSeries != null) {
      return getLastMonthBidAskRateSeries(this);
    }
    return orElse();
  }
}

abstract class LastMonthBidAskRateSeries implements RatesSeriesEvent {
  factory LastMonthBidAskRateSeries({required final String code}) =
      _$LastMonthBidAskRateSeries;

  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$LastMonthBidAskRateSeriesCopyWith<_$LastMonthBidAskRateSeries>
      get copyWith => throw _privateConstructorUsedError;
}
