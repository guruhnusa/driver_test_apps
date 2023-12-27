import 'package:flutter/material.dart';
import '../constant/colors.dart';
import '/core/extensions/build_context_ext.dart';

class CustomScaffold extends StatelessWidget {
  final Widget? appBarTitle;
  final List<Widget>? actions;
  final Widget? body;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  final bool showBackButton;
  final double toolbarHeight;

  const CustomScaffold({
    super.key,
    this.appBarTitle,
    this.actions,
    this.body,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.showBackButton = true,
    this.toolbarHeight = 60.0,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBlue,
      appBar: AppBar(
        toolbarHeight: toolbarHeight,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
        ),
        leading: showBackButton
            ? IconButton(
                onPressed: () => context.pop(),
                icon: const Icon(
                  Icons.chevron_left,
                  color: Colors.white,
                  size: 32.0,
                ),
              )
            : null,
        centerTitle: true,
        backgroundColor: AppColors.primaryBlue,
        title: appBarTitle,
        actions: actions,
      ),
      body: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30.0),
          ),
          color: AppColors.light,
        ),
        child: body,
      ),
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
