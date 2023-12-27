import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:driver_test_apps/data/datasources/remote/auth_remote_datasource.dart';
import 'package:driver_test_apps/data/models/request/login_request_model.dart';
import 'package:driver_test_apps/data/models/response/auth_response_model.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRemoteDataSource authRemoteDataSource;
  LoginBloc(
    this.authRemoteDataSource,
  ) : super(const _Initial()) {
    on<_Login>((event, emit) async {
      emit(const _Loading());
      final response = await authRemoteDataSource.login(event.data);
      response.fold(
        (error) => emit(
          _Error(error),
        ),
        (data) => emit(
          _Success(data),
        ),
      );
    });
  }
}
