// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:driver_test_apps/data/datasources/remote/auth_remote_datasource.dart';
import 'package:driver_test_apps/data/models/request/register_request_model.dart';
import 'package:driver_test_apps/data/models/response/auth_response_model.dart';

part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AuthRemoteDataSource authRemoteDataSource;
  RegisterBloc(
    this.authRemoteDataSource,
  ) : super(const _Initial()) {
    on<_Register>((event, emit) async {
      emit(const _Loading());
      final response = await authRemoteDataSource.register(event.data);
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
