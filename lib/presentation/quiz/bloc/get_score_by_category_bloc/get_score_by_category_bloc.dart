import 'package:driver_test_apps/data/datasources/remote/exam_remote_datasource.dart';
import 'package:driver_test_apps/data/models/response/get_score_response_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_score_by_category_event.dart';
part 'get_score_by_category_state.dart';
part 'get_score_by_category_bloc.freezed.dart';

class GetScoreByCategoryBloc
    extends Bloc<GetScoreByCategoryEvent, GetScoreByCategoryState> {
  final ExamRemoteDatasource examRemoteDatasource;
  GetScoreByCategoryBloc(this.examRemoteDatasource) : super(const _Initial()) {
    on<_GetScoreByCategory>((event, emit) async {
      emit(const _Loading());
      final response =
          await examRemoteDatasource.getScoreByCategory(event.category);
      response.fold(
        (error) => emit(_Error(error)),
        (data) => emit(_Success(data)),
      );
    });
  }
}
