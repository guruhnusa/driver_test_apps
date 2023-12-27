part of 'question_list_bloc.dart';

@freezed
class QuestionListEvent with _$QuestionListEvent {
  const factory QuestionListEvent.started() = _Started;
  const factory QuestionListEvent.getQuestionList(
    List<Question> data,
  ) = _GetQuestionList;
  const factory QuestionListEvent.nextQuestion() = _NextQuestion;
}
