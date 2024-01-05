part of 'get_sign_by_category_bloc.dart';

@freezed
class GetSignByCategoryEvent with _$GetSignByCategoryEvent {
  const factory GetSignByCategoryEvent.started() = _Started;
  const factory GetSignByCategoryEvent.getSignByCategory(
      {required String category}) = _GetSignByCategory;
}