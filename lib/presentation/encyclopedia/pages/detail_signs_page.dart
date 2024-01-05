// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:driver_test_apps/presentation/encyclopedia/models/road_signs_category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:driver_test_apps/core/components/custom_scaffold.dart';

import '../bloc/get_sign/get_sign_by_category_bloc.dart';
import '../widgets/sign_information.dart';

class RoadDetailSignPage extends StatelessWidget {
  final RoadSignsCategoryModel data;
  const RoadDetailSignPage({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBarTitle: Text(data.name),
      body: BlocBuilder<GetSignByCategoryBloc, GetSignByCategoryState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return const Center(child: CircularProgressIndicator());
            },
            loading: () {
              return const Center(child: CircularProgressIndicator());
            },
            error: (message) {
              return Center(child: Text(message));
            },
            success: (model) {
              return Padding(
                padding: const EdgeInsets.all(24),
                child: SignsInformation(
                  model: model,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
