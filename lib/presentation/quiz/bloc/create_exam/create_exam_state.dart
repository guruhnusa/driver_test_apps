part of 'create_exam_bloc.dart';

@freezed
class CreateExamState with _$CreateExamState {
  const factory CreateExamState.initial() = _Initial;
  const factory CreateExamState.loading() = _Loading;
  const factory CreateExamState.success() = _Success;
  const factory CreateExamState.error(String message) = _Error;
}
