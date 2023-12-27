import 'package:driver_test_apps/data/datasources/remote/exam_remote_datasource.dart';
import 'package:driver_test_apps/data/models/response/exam_response_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exam_by_category_event.dart';
part 'exam_by_category_state.dart';
part 'exam_by_category_bloc.freezed.dart';

class ExamByCategoryBloc
    extends Bloc<ExamByCategoryEvent, ExamByCategoryState> {
  final ExamRemoteDatasource examRemoteDatasource;
  ExamByCategoryBloc(
    this.examRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GetExamByCategory>((event, emit) async {
      emit(const _Loading());
      final response =
          await examRemoteDatasource.getExamByCategory(event.category);
      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(
          _Success(r),
        ),
      );
    });
  }
}
