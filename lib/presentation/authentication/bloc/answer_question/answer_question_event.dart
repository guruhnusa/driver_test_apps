part of 'answer_question_bloc.dart';

@freezed
class AnswerQuestionEvent with _$AnswerQuestionEvent {
  const factory AnswerQuestionEvent.started() = _Started;
  const factory AnswerQuestionEvent.answerQuestion(
    String questionId,
    String answer,
  ) = _AnswerQuestion;
}