import 'package:driver_test_apps/core/extensions/build_context_ext.dart';
import 'package:driver_test_apps/presentation/encyclopedia/pages/encyclopedia_page.dart';
import 'package:driver_test_apps/presentation/home/pages/about_us_page.dart';
import 'package:driver_test_apps/presentation/home/pages/tips_trick_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../core/constant/colors.dart';
import '../../quiz/pages/quiz_list_page.dart';
import '../models/menu_item_model.dart';

class MenuHome extends StatelessWidget {
  const MenuHome({
    super.key,
    required this.menuItems,
  });

  final List<MenuItemData> menuItems;

  @override
  Widget build(BuildContext context) {
    return GridView.custom(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverWovenGridDelegate.count(
        crossAxisCount: 2,
        crossAxisSpacing: 14,
        mainAxisSpacing: 14,
        pattern: [
          const WovenGridTile(
            153 / 175,
          ),
          const WovenGridTile(
            153 / 160,
            alignment: AlignmentDirectional.topCenter,
          ),
        ],
      ),
      childrenDelegate: SliverChildBuilderDelegate(
        childCount: 4,
        (context, index) {
          return InkWell(
            onTap: () {
              switch (index) {
                case 0:
                  context.push(const QuizListPage());
                  break;
                case 1:
                  context.push(const TipsTrickPage());
                  break;
                case 2:
                  context.push(const AboutUs());
                  break;
                case 3:
                  context.push(const EncyclopediaPage());
                  break;
                default:
              }
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: index == 0 || index == 3
                    ? AppColors.primaryPurple.withOpacity(0.7)
                    : AppColors.primaryCream.withOpacity(0.7),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage(menuItems[index].imagePath),
                      ),
                    ),
                  ),
                  Text(
                    menuItems[index].label,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
