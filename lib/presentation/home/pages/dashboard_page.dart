// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:driver_test_apps/presentation/encyclopedia/pages/encyclopedia_page.dart';
import 'package:driver_test_apps/presentation/history/pages/history_page.dart';
import 'package:driver_test_apps/presentation/home/pages/home_page.dart';
import 'package:driver_test_apps/presentation/profile/pages/profile_page.dart';
import 'package:flutter/material.dart';

import 'package:driver_test_apps/core/assets/assets.gen.dart';
import 'package:driver_test_apps/core/constant/colors.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int selectedIndex = 0;

  void navigateToPage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> pages = [
    const HomePage(),
    const EncyclopediaPage(),
    const HistoryPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NavbarMenu(
              iconPath: Assets.images.navigation.home.path,
              iconLabel: "Home",
              selectedIndex: selectedIndex,
              isActive: selectedIndex == 0,
              onTap: () => navigateToPage(0),
            ),
            NavbarMenu(
              iconPath: Assets.images.navigation.materi.path,
              iconLabel: "Materi",
              selectedIndex: selectedIndex,
              isActive: selectedIndex == 1,
              onTap: () => navigateToPage(1),
            ),
            NavbarMenu(
              iconPath: Assets.images.navigation.history.path,
              iconLabel: "History",
              selectedIndex: selectedIndex,
              isActive: selectedIndex == 2,
              onTap: () => navigateToPage(2),
            ),
            NavbarMenu(
              iconPath: Assets.images.navigation.profile.path,
              iconLabel: "Profile",
              selectedIndex: selectedIndex,
              isActive: selectedIndex == 3,
              onTap: () => navigateToPage(3),
            ),
          ],
        ),
      ),
    );
  }
}

class NavbarMenu extends StatelessWidget {
  final int selectedIndex;
  final String iconPath;
  final String iconLabel;
  final VoidCallback onTap;
  final bool isActive;
  const NavbarMenu({
    Key? key,
    required this.selectedIndex,
    required this.iconPath,
    required this.iconLabel,
    required this.onTap,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: isActive
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 28.0,
                  height: 28.0,
                  child: Image.asset(
                    iconPath,
                    fit: BoxFit.cover,
                    color: isActive
                        ? AppColors.primaryBlue
                        : AppColors.navbarPassive,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  iconLabel,
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryBlue),
                ),
              ],
            )
          : SizedBox(
              width: 28.0,
              height: 28.0,
              child: Image.asset(
                iconPath,
                fit: BoxFit.cover,
                color:
                    isActive ? AppColors.primaryBlue : AppColors.navbarPassive,
              ),
            ),
    );
  }
}
