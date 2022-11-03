import 'package:flutter/material.dart';
import 'package:portfolio_app/src/constants/app_sizes.dart';
import 'package:portfolio_app/src/constants/breakpoints.dart';
import 'package:portfolio_app/src/home/widgets/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
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
                  child: Column(
                    children: [
                      ...children,
                      // our footer
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
