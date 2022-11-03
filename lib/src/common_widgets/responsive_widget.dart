import 'package:flutter/material.dart';
import 'package:portfolio_app/src/constants/breakpoints.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? mobileLarge;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
    this.mobileLarge,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= Breakpoint.mobile;

  static bool isMobileLarge(BuildContext context) =>
      MediaQuery.of(context).size.width <= Breakpoint.mobileLarge;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < Breakpoint.tablet;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= Breakpoint.tablet;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width >= 1024) {
      return desktop;
    } else if (size.width >= 700 && tablet != null) {
      return tablet!;
    } else if (size.width >= 500 && mobileLarge != null) {
      return mobileLarge!;
    } else {
      return mobile;
    }
  }
}
