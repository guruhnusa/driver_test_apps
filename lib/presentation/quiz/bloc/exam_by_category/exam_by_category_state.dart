part of 'exam_by_category_bloc.dart';

@freezed
class ExamByCategoryState with _$ExamByCategoryState {
  const factory ExamByCategoryState.initial() = _Initial;
  const factory ExamByCategoryState.loading() = _Loading;
  const factory ExamByCategoryState.success(
      ExamResponseModel examResponseModel) = _Success;
  const factory ExamByCategoryState.error(String message) = _Error;
}
