import 'package:driver_test_apps/core/extensions/build_context_ext.dart';
import 'package:driver_test_apps/presentation/encyclopedia/pages/road_signs_page.dart';
import 'package:driver_test_apps/presentation/encyclopedia/pages/tutorial_video_page.dart';
import 'package:flutter/material.dart';
import 'package:driver_test_apps/core/components/custom_scaffold.dart';
import '../widgets/encyclopedia_card.dart';

class EncyclopediaPage extends StatefulWidget {
  const EncyclopediaPage({super.key});

  @override
  State<EncyclopediaPage> createState() => _EncyclopediaPageState();
}

class _EncyclopediaPageState extends State<EncyclopediaPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBarTitle: const Text("Encyclopedia"),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 35),
        children: [
          EncyclopediaCard(
            onTap: () {
              context.push(
                const TutorialVideoPage(),
              );
            },
            title: "Tutorial video",
            icon: Icons.ondemand_video_rounded,
            textColor: const Color(0xFF4378DB),
            iconColor: const Color(0xFF4378DB),
          ),
          const SizedBox(height: 20),
          EncyclopediaCard(
            onTap: () {
              context.push(
                const RoadSignsPage(),
              );
            },
            title: "Road Sign",
            icon: Icons.traffic_rounded,
            textColor: const Color(0xFFFFB300),
            iconColor: const Color(0xFFFFB300),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
