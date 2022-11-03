import 'package:flutter/material.dart';
import 'package:portfolio_app/src/home/home_header.dart';
import 'package:portfolio_app/src/home/responsive_main_screen.dart';
import 'package:portfolio_app/src/theme/theme_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.themeController}) : super(key: key);
  final ThemeController themeController;

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      themeController: themeController,
      children: [HomeBanner()],
    );
  }
}
