part of 'exam_by_category_bloc.dart';

@freezed
class ExamByCategoryEvent with _$ExamByCategoryEvent {
  const factory ExamByCategoryEvent.started() = _Started;
  const factory ExamByCategoryEvent.getExamByCategory(String category) =
      _GetExamByCategory;
}