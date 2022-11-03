import 'package:flutter/material.dart';
import 'package:portfolio_app/src/home/home_header.dart';
import 'package:portfolio_app/src/home/responsive_main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      children: [HomeBanner()],
    );
  }
}
