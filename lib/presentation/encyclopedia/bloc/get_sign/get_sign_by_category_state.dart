part of 'get_sign_by_category_bloc.dart';

@freezed
class GetSignByCategoryState with _$GetSignByCategoryState {
  const factory GetSignByCategoryState.initial() = _Initial;
  const factory GetSignByCategoryState.loading() = _Loading;
  const factory GetSignByCategoryState.success(
      {required SignsResponseModel model}) = _Success;
  const factory GetSignByCategoryState.error({required String message}) =
      _Error;
}
