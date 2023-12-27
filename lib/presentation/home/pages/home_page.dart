import 'package:driver_test_apps/core/assets/assets.gen.dart';
import 'package:driver_test_apps/presentation/home/widgets/banner_home.dart';
import 'package:flutter/material.dart';

import '../models/menu_item_model.dart';
import '../widgets/header_home.dart';
import '../widgets/menu_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<MenuItemData> menuItems = [
    MenuItemData(imagePath: Assets.images.menu.quiz.path, label: "Quiz"),
    MenuItemData(
        imagePath: Assets.images.menu.tipsTrick.path, label: "Tips & Trick"),
    MenuItemData(imagePath: Assets.images.menu.aboutUs.path, label: "About Us"),
    MenuItemData(
        imagePath: Assets.images.menu.encyclopedia.path, label: "Encyclopedia"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
          children: [
            const HeaderHome(),
            const BannerHome(),
            const SizedBox(
              height: 20,
            ),
            MenuHome(menuItems: menuItems)
          ],
        ),
      ),
    );
  }
}
