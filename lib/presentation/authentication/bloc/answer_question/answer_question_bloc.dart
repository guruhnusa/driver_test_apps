import 'package:driver_test_apps/data/datasources/remote/exam_remote_datasource.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer_question_event.dart';
part 'answer_question_state.dart';
part 'answer_question_bloc.freezed.dart';

class AnswerQuestionBloc
    extends Bloc<AnswerQuestionEvent, AnswerQuestionState> {
  final ExamRemoteDatasource examRemoteDatasource;
  AnswerQuestionBloc(this.examRemoteDatasource) : super(const _Initial()) {
    on<_AnswerQuestion>((event, emit) async {
      emit(const _Loading());
      final response = await examRemoteDatasource.asnwerQuestion(
          event.questionId, event.answer);
      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(
          const _Success(),
        ),
      );
    });
  }
}
