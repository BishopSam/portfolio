import 'package:flutter/material.dart';
import 'package:portfolio_app/src/common_widgets/animated_progress_indicators.dart';
import 'package:portfolio_app/src/constants/app_sizes.dart';

class Languages extends StatelessWidget {
  const Languages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: Sizes.p20),
          child: Text(
            "Languages",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "Dart",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: "English",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.1,
          label: "Igbo",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: "Pidgin",
        ),
  
      ],
    );
  }
}
