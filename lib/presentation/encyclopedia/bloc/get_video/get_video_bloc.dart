import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:driver_test_apps/data/datasources/remote/tutorial_video_remote_datasource.dart';
import 'package:driver_test_apps/data/models/response/tutorial_video_response_model.dart';

part 'get_video_bloc.freezed.dart';
part 'get_video_event.dart';
part 'get_video_state.dart';

class GetVideoBloc extends Bloc<GetVideoEvent, GetVideoState> {
  final TutorialVideoRemoteDatasource tutorialVideoRemoteDatasource;
  GetVideoBloc(
    this.tutorialVideoRemoteDatasource,
  ) : super(const _Initial()) {
    on<GetVideoEvent>((event, emit) async {
      emit(const _Loading());
      final reponse = await TutorialVideoRemoteDatasource().getAllVideo();
      reponse.fold(
        (error) => emit(_Error(error)),
        (data) => emit(_Success(data)),
      );
    });
  }
}
