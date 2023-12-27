part of 'history_bloc.dart';

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState.initial() = _Initial;
  const factory HistoryState.loading() = _Loading;
  const factory HistoryState.onSuccessGetHistory(
      HistoryResponseModel historyResponseModel) = _OnSuccessGetHistory;
  const factory HistoryState.onFailedGetHistory(String message) =
      _OnFailedGetHistory;
}
