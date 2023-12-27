part of 'get_score_by_category_bloc.dart';

@freezed
class GetScoreByCategoryState with _$GetScoreByCategoryState {
  const factory GetScoreByCategoryState.initial() = _Initial;
  const factory GetScoreByCategoryState.loading() = _Loading;
  const factory GetScoreByCategoryState.success(GetScoreResponseModel data) =
      _Success;
  const factory GetScoreByCategoryState.error(String message) = _Error;
}
