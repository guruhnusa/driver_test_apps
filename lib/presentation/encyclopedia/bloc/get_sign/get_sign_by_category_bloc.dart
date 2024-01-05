
import 'package:driver_test_apps/data/datasources/remote/signs_remote_datasource.dart';
import 'package:driver_test_apps/data/models/response/signs_response_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_sign_by_category_event.dart';
part 'get_sign_by_category_state.dart';
part 'get_sign_by_category_bloc.freezed.dart';

class GetSignByCategoryBloc
    extends Bloc<GetSignByCategoryEvent, GetSignByCategoryState> {
  final SignRemoteDataSource signRemoteDataSource;
  GetSignByCategoryBloc(
    this.signRemoteDataSource,
  ) : super(const _Initial()) {
    on<_GetSignByCategory>((event, emit) async {
      emit(const _Loading());
      final response =
          await signRemoteDataSource.getSignsByCategory(event.category);
      response.fold(
        (l) => emit(_Error(message: l)),
        (r) => emit(_Success(model: r)),
      );
    });
  }
}
