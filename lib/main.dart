import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/src/constants/app_colors.dart';
import 'package:portfolio_app/src/home/home_screen.dart';
import 'package:portfolio_app/src/theme/theme_controller.dart';
import 'package:portfolio_app/src/theme/theme_service.dart';

void main() async {
  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.
  final themeController = ThemeController(ThemeService());

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  await themeController.loadSettings();

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.

  runApp(MyApp(
    themeController: themeController,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.themeController});
  final ThemeController themeController;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: themeController,
        builder: (context, child) {
          return MaterialApp(
            title: 'Bishop\'s PortFolio',
            debugShowCheckedModeBanner: false,
            theme: ThemeData.light().copyWith(
              primaryColor: primaryColor,
              scaffoldBackgroundColor: Colors.white,
              canvasColor: Colors.white,
              appBarTheme: const AppBarTheme(
                  color: Colors.transparent,
                  elevation: 0,
                  iconTheme: IconThemeData(
                    color: primaryColor,
                  )),
              textTheme:
                  GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
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
              appBarTheme: const AppBarTheme(
                  color: Colors.transparent,
                  elevation: 0,
                  iconTheme: IconThemeData(
                    color: primaryColor,
                  )),
              textTheme:
                  GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
                      .apply(bodyColor: Colors.white)
                      .copyWith(
                        bodyText1: const TextStyle(color: bodyTextColor),
                        bodyText2: const TextStyle(color: bodyTextColor),
                      ),
            ),
            themeMode: themeController.themeMode,
            home: HomeScreen(
              themeController: themeController,
            ),
          );
        });
  }
}
