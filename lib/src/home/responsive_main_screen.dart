import 'package:flutter/material.dart';
import 'package:portfolio_app/src/constants/app_sizes.dart';
import 'package:portfolio_app/src/constants/breakpoints.dart';
import 'package:portfolio_app/src/home/widgets/side_menu.dart';
import 'package:portfolio_app/src/theme/theme_controller.dart';
import 'package:toggle_switch/toggle_switch.dart';

class MainScreen extends StatelessWidget {
  const MainScreen(
      {Key? key, required this.children, required this.themeController})
      : super(key: key);

  final List<Widget> children;
  final ThemeController themeController;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    int getThemeModeInt(ThemeMode themeMode) {
      switch (themeMode) {
        case ThemeMode.dark:
          return 0;
        case ThemeMode.light:
          return 1;
        default:
          return 0;
      }
    }

    return Scaffold(
      //TODO: add button for toggling theme mode
      appBar: screenWidth >= Breakpoint.tablet
          ? null
          : AppBar(
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ToggleSwitch(
                    minWidth: 50.0,
                    minHeight: 60.0,
                    initialLabelIndex:
                        getThemeModeInt(themeController.themeMode),
                    cornerRadius: 20.0,
                    totalSwitches: ThemeMode.values.length - 1,
                    icons: const [
                      Icons.dark_mode,
                      Icons.light_mode,
                    ],
                    iconSize: 20.0,
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey[300],
                    inactiveFgColor: Colors.white,
                    // animate must be set to true when using custom curve
                    onToggle: (index) {
                      themeController.updateThemeMode(ThemeMode.values[index!]);
                    },
                  ),
                ),
              ],
            ),
      drawer: const SideMenu(),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: Breakpoint.maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (screenWidth >= Breakpoint.tablet)
                const Expanded(
                  flex: 2,
                  child: SideMenu(),
                ),
              const SizedBox(width: Sizes.p20),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          ...children,
                          // our footer
                        ],
                      ),
                      if (screenWidth >= Breakpoint.tablet)
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ToggleSwitch(
                              minWidth: 50.0,
                              minHeight: 60.0,
                              initialLabelIndex:
                                  getThemeModeInt(themeController.themeMode),
                              cornerRadius: 20.0,
                              totalSwitches: ThemeMode.values.length - 1,
                              icons: const [
                                Icons.dark_mode,
                                Icons.light_mode,
                              ],
                              iconSize: 20.0,
                              activeFgColor: Colors.white,
                              inactiveBgColor: Colors.grey[300],
                              inactiveFgColor: Colors.white,
                              // animate must be set to true when using custom curve
                              onToggle: (index) {
                                themeController
                                    .updateThemeMode(ThemeMode.values[index!]);
                              },
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
