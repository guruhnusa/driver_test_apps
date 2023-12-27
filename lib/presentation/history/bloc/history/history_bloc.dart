// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:driver_test_apps/data/datasources/remote/exam_remote_datasource.dart';
import 'package:driver_test_apps/data/models/response/history_response_model.dart';

part 'history_bloc.freezed.dart';
part 'history_event.dart';
part 'history_state.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  final ExamRemoteDatasource examRemoteDatasource;
  HistoryBloc(
    this.examRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GetHistory>((event, emit) async {
      emit(const _Loading());
      final response = await examRemoteDatasource.getAllScore();
      response.fold(
        (error) => emit(_OnFailedGetHistory(error)),
        (data) => emit(_OnSuccessGetHistory(data)),
      );
    });
  }
}
