part of 'create_exam_bloc.dart';

@freezed
class CreateExamEvent with _$CreateExamEvent {
  const factory CreateExamEvent.started() = _Started;
  const factory CreateExamEvent.createExam() = _CreateExam;
}
