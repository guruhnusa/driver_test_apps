import 'package:driver_test_apps/data/models/response/exam_response_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_list_event.dart';
part 'question_list_state.dart';
part 'question_list_bloc.freezed.dart';

class QuestionListBloc extends Bloc<QuestionListEvent, QuestionListState> {
  QuestionListBloc() : super(const _Initial()) {
    on<_GetQuestionList>((event, emit) {
      emit(const _Loading());
      emit(
        _Success(event.data, 0, event.data.length > 1),
      );
    });
    on<_NextQuestion>((event, emit) {
      final currentState = state as _Success;
      emit(const _Loading());
      emit(
        _Success(
          currentState.data,
          currentState.currentIndex + 1,
          currentState.data.length > currentState.currentIndex + 2,
        ),
      );
    });
  }
}
