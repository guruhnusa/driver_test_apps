part of 'get_score_by_category_bloc.dart';

@freezed
class GetScoreByCategoryEvent with _$GetScoreByCategoryEvent {
  const factory GetScoreByCategoryEvent.started() = _Started;
  const factory GetScoreByCategoryEvent.getScoreByCategory(
      String category) = _GetScoreByCategory;
      
}