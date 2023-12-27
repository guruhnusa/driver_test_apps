// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:driver_test_apps/data/datasources/remote/exam_remote_datasource.dart';

part 'create_exam_bloc.freezed.dart';
part 'create_exam_event.dart';
part 'create_exam_state.dart';

class CreateExamBloc extends Bloc<CreateExamEvent, CreateExamState> {
  final ExamRemoteDatasource examRemoteDatasource;
  CreateExamBloc(
    this.examRemoteDatasource,
  ) : super(const _Initial()) {
    on<_CreateExam>((event, emit) async {
      emit(const _Loading());
      final response = await examRemoteDatasource.createExam();
      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(
          const _Success(),
        ),
      );
    });
  }
}
