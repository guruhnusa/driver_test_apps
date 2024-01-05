import 'package:driver_test_apps/core/assets/assets.gen.dart';
import 'package:driver_test_apps/core/components/custom_scaffold.dart';
import 'package:driver_test_apps/core/constant/colors.dart';
import 'package:driver_test_apps/core/extensions/build_context_ext.dart';
import 'package:driver_test_apps/presentation/encyclopedia/models/road_signs_category_model.dart';
import 'package:driver_test_apps/presentation/encyclopedia/pages/detail_signs_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/get_sign/get_sign_by_category_bloc.dart';

class RoadSignsPage extends StatelessWidget {
  const RoadSignsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<RoadSignsCategoryModel> dataSigns = [
      RoadSignsCategoryModel(
          name: "Warning signs",
          category: "Warning",
          icon: Assets.images.signs.warning.path),
      RoadSignsCategoryModel(
          name: "Priority signs",
          category: "Priority",
          icon: Assets.images.signs.priority.path),
      RoadSignsCategoryModel(
          name: "Forbidden signs",
          category: "Forbidden",
          icon: Assets.images.signs.forbidden.path),
    ];
    return CustomScaffold(
      appBarTitle: const Text("Road Sign"),
      body: ListView.separated(
          padding: const EdgeInsets.all(20),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                context.read<GetSignByCategoryBloc>().add(
                      GetSignByCategoryEvent.getSignByCategory(
                        category: dataSigns[index].category,
                      ),
                    );
                context.push(
                  RoadDetailSignPage(data: dataSigns[index]),
                );
              },
              child: Card(
                child: ListTile(
                  leading: Image.asset(dataSigns[index].icon),
                  title: Text(dataSigns[index].name),
                  titleTextStyle: const TextStyle(
                    color: AppColors.secondaryBlue,
                    fontSize: 14,
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 20);
          },
          itemCount: dataSigns.length),
    );
  }
}
