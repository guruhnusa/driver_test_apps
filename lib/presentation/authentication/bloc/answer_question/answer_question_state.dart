part of 'answer_question_bloc.dart';

@freezed
class AnswerQuestionState with _$AnswerQuestionState {
  const factory AnswerQuestionState.initial() = _Initial;
  const factory AnswerQuestionState.loading() = _Loading;
  const factory AnswerQuestionState.success() = _Success;
  const factory AnswerQuestionState.error(String message) = _Error;
  
}
