import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/src/constants/app_colors.dart';
import 'package:portfolio_app/src/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bishop\'s PortFolio',
      theme: ThemeData().copyWith(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.black)
            .copyWith(
              bodyText1: const TextStyle(color: bodyTextColor),
              bodyText2: const TextStyle(color: bodyTextColor),
            ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyText1: const TextStyle(color: bodyTextColor),
              bodyText2: const TextStyle(color: bodyTextColor),
            ),
      ),
      home: const HomeScreen(),
    );
  }
}
