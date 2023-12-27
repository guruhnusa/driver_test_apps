part of 'question_list_bloc.dart';

@freezed
class QuestionListState with _$QuestionListState {
  const factory QuestionListState.initial() = _Initial;
  const factory QuestionListState.loading() = _Loading;
  const factory QuestionListState.success(
      List<Question> data, int currentIndex, bool isNext) = _Success;
  const factory QuestionListState.error(String message) = _Error;
}
