// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetHistory value) getHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetHistory value)? getHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetHistory value)? getHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryEventCopyWith<$Res> {
  factory $HistoryEventCopyWith(
          HistoryEvent value, $Res Function(HistoryEvent) then) =
      _$HistoryEventCopyWithImpl<$Res, HistoryEvent>;
}

/// @nodoc
class _$HistoryEventCopyWithImpl<$Res, $Val extends HistoryEvent>
    implements $HistoryEventCopyWith<$Res> {
  _$HistoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'HistoryEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getHistory,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getHistory,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getHistory,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetHistory value) getHistory,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetHistory value)? getHistory,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetHistory value)? getHistory,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HistoryEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetHistoryImplCopyWith<$Res> {
  factory _$$GetHistoryImplCopyWith(
          _$GetHistoryImpl value, $Res Function(_$GetHistoryImpl) then) =
      __$$GetHistoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetHistoryImplCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res, _$GetHistoryImpl>
    implements _$$GetHistoryImplCopyWith<$Res> {
  __$$GetHistoryImplCopyWithImpl(
      _$GetHistoryImpl _value, $Res Function(_$GetHistoryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetHistoryImpl implements _GetHistory {
  const _$GetHistoryImpl();

  @override
  String toString() {
    return 'HistoryEvent.getHistory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetHistoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getHistory,
  }) {
    return getHistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getHistory,
  }) {
    return getHistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getHistory,
    required TResult orElse(),
  }) {
    if (getHistory != null) {
      return getHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetHistory value) getHistory,
  }) {
    return getHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetHistory value)? getHistory,
  }) {
    return getHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetHistory value)? getHistory,
    required TResult orElse(),
  }) {
    if (getHistory != null) {
      return getHistory(this);
    }
    return orElse();
  }
}

abstract class _GetHistory implements HistoryEvent {
  const factory _GetHistory() = _$GetHistoryImpl;
}

/// @nodoc
mixin _$HistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(HistoryResponseModel historyResponseModel)
        onSuccessGetHistory,
    required TResult Function(String message) onFailedGetHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(HistoryResponseModel historyResponseModel)?
        onSuccessGetHistory,
    TResult? Function(String message)? onFailedGetHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HistoryResponseModel historyResponseModel)?
        onSuccessGetHistory,
    TResult Function(String message)? onFailedGetHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OnSuccessGetHistory value) onSuccessGetHistory,
    required TResult Function(_OnFailedGetHistory value) onFailedGetHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OnSuccessGetHistory value)? onSuccessGetHistory,
    TResult? Function(_OnFailedGetHistory value)? onFailedGetHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OnSuccessGetHistory value)? onSuccessGetHistory,
    TResult Function(_OnFailedGetHistory value)? onFailedGetHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res, HistoryState>;
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res, $Val extends HistoryState>
    implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HistoryState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(HistoryResponseModel historyResponseModel)
        onSuccessGetHistory,
    required TResult Function(String message) onFailedGetHistory,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(HistoryResponseModel historyResponseModel)?
        onSuccessGetHistory,
    TResult? Function(String message)? onFailedGetHistory,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HistoryResponseModel historyResponseModel)?
        onSuccessGetHistory,
    TResult Function(String message)? onFailedGetHistory,
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
    required TResult Function(_OnSuccessGetHistory value) onSuccessGetHistory,
    required TResult Function(_OnFailedGetHistory value) onFailedGetHistory,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OnSuccessGetHistory value)? onSuccessGetHistory,
    TResult? Function(_OnFailedGetHistory value)? onFailedGetHistory,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OnSuccessGetHistory value)? onSuccessGetHistory,
    TResult Function(_OnFailedGetHistory value)? onFailedGetHistory,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HistoryState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'HistoryState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(HistoryResponseModel historyResponseModel)
        onSuccessGetHistory,
    required TResult Function(String message) onFailedGetHistory,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(HistoryResponseModel historyResponseModel)?
        onSuccessGetHistory,
    TResult? Function(String message)? onFailedGetHistory,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HistoryResponseModel historyResponseModel)?
        onSuccessGetHistory,
    TResult Function(String message)? onFailedGetHistory,
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
    required TResult Function(_OnSuccessGetHistory value) onSuccessGetHistory,
    required TResult Function(_OnFailedGetHistory value) onFailedGetHistory,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OnSuccessGetHistory value)? onSuccessGetHistory,
    TResult? Function(_OnFailedGetHistory value)? onFailedGetHistory,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OnSuccessGetHistory value)? onSuccessGetHistory,
    TResult Function(_OnFailedGetHistory value)? onFailedGetHistory,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HistoryState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$OnSuccessGetHistoryImplCopyWith<$Res> {
  factory _$$OnSuccessGetHistoryImplCopyWith(_$OnSuccessGetHistoryImpl value,
          $Res Function(_$OnSuccessGetHistoryImpl) then) =
      __$$OnSuccessGetHistoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HistoryResponseModel historyResponseModel});
}

/// @nodoc
class __$$OnSuccessGetHistoryImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$OnSuccessGetHistoryImpl>
    implements _$$OnSuccessGetHistoryImplCopyWith<$Res> {
  __$$OnSuccessGetHistoryImplCopyWithImpl(_$OnSuccessGetHistoryImpl _value,
      $Res Function(_$OnSuccessGetHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? historyResponseModel = null,
  }) {
    return _then(_$OnSuccessGetHistoryImpl(
      null == historyResponseModel
          ? _value.historyResponseModel
          : historyResponseModel // ignore: cast_nullable_to_non_nullable
              as HistoryResponseModel,
    ));
  }
}

/// @nodoc

class _$OnSuccessGetHistoryImpl implements _OnSuccessGetHistory {
  const _$OnSuccessGetHistoryImpl(this.historyResponseModel);

  @override
  final HistoryResponseModel historyResponseModel;

  @override
  String toString() {
    return 'HistoryState.onSuccessGetHistory(historyResponseModel: $historyResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSuccessGetHistoryImpl &&
            (identical(other.historyResponseModel, historyResponseModel) ||
                other.historyResponseModel == historyResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, historyResponseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSuccessGetHistoryImplCopyWith<_$OnSuccessGetHistoryImpl> get copyWith =>
      __$$OnSuccessGetHistoryImplCopyWithImpl<_$OnSuccessGetHistoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(HistoryResponseModel historyResponseModel)
        onSuccessGetHistory,
    required TResult Function(String message) onFailedGetHistory,
  }) {
    return onSuccessGetHistory(historyResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(HistoryResponseModel historyResponseModel)?
        onSuccessGetHistory,
    TResult? Function(String message)? onFailedGetHistory,
  }) {
    return onSuccessGetHistory?.call(historyResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HistoryResponseModel historyResponseModel)?
        onSuccessGetHistory,
    TResult Function(String message)? onFailedGetHistory,
    required TResult orElse(),
  }) {
    if (onSuccessGetHistory != null) {
      return onSuccessGetHistory(historyResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OnSuccessGetHistory value) onSuccessGetHistory,
    required TResult Function(_OnFailedGetHistory value) onFailedGetHistory,
  }) {
    return onSuccessGetHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OnSuccessGetHistory value)? onSuccessGetHistory,
    TResult? Function(_OnFailedGetHistory value)? onFailedGetHistory,
  }) {
    return onSuccessGetHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OnSuccessGetHistory value)? onSuccessGetHistory,
    TResult Function(_OnFailedGetHistory value)? onFailedGetHistory,
    required TResult orElse(),
  }) {
    if (onSuccessGetHistory != null) {
      return onSuccessGetHistory(this);
    }
    return orElse();
  }
}

abstract class _OnSuccessGetHistory implements HistoryState {
  const factory _OnSuccessGetHistory(
          final HistoryResponseModel historyResponseModel) =
      _$OnSuccessGetHistoryImpl;

  HistoryResponseModel get historyResponseModel;
  @JsonKey(ignore: true)
  _$$OnSuccessGetHistoryImplCopyWith<_$OnSuccessGetHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnFailedGetHistoryImplCopyWith<$Res> {
  factory _$$OnFailedGetHistoryImplCopyWith(_$OnFailedGetHistoryImpl value,
          $Res Function(_$OnFailedGetHistoryImpl) then) =
      __$$OnFailedGetHistoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$OnFailedGetHistoryImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$OnFailedGetHistoryImpl>
    implements _$$OnFailedGetHistoryImplCopyWith<$Res> {
  __$$OnFailedGetHistoryImplCopyWithImpl(_$OnFailedGetHistoryImpl _value,
      $Res Function(_$OnFailedGetHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$OnFailedGetHistoryImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnFailedGetHistoryImpl implements _OnFailedGetHistory {
  const _$OnFailedGetHistoryImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HistoryState.onFailedGetHistory(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnFailedGetHistoryImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnFailedGetHistoryImplCopyWith<_$OnFailedGetHistoryImpl> get copyWith =>
      __$$OnFailedGetHistoryImplCopyWithImpl<_$OnFailedGetHistoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(HistoryResponseModel historyResponseModel)
        onSuccessGetHistory,
    required TResult Function(String message) onFailedGetHistory,
  }) {
    return onFailedGetHistory(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(HistoryResponseModel historyResponseModel)?
        onSuccessGetHistory,
    TResult? Function(String message)? onFailedGetHistory,
  }) {
    return onFailedGetHistory?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HistoryResponseModel historyResponseModel)?
        onSuccessGetHistory,
    TResult Function(String message)? onFailedGetHistory,
    required TResult orElse(),
  }) {
    if (onFailedGetHistory != null) {
      return onFailedGetHistory(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OnSuccessGetHistory value) onSuccessGetHistory,
    required TResult Function(_OnFailedGetHistory value) onFailedGetHistory,
  }) {
    return onFailedGetHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OnSuccessGetHistory value)? onSuccessGetHistory,
    TResult? Function(_OnFailedGetHistory value)? onFailedGetHistory,
  }) {
    return onFailedGetHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OnSuccessGetHistory value)? onSuccessGetHistory,
    TResult Function(_OnFailedGetHistory value)? onFailedGetHistory,
    required TResult orElse(),
  }) {
    if (onFailedGetHistory != null) {
      return onFailedGetHistory(this);
    }
    return orElse();
  }
}

abstract class _OnFailedGetHistory implements HistoryState {
  const factory _OnFailedGetHistory(final String message) =
      _$OnFailedGetHistoryImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$OnFailedGetHistoryImplCopyWith<_$OnFailedGetHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
