import 'package:flutter/material.dart';
import 'package:portfolio_app/src/common_widgets/animated_progress_indicators.dart';
import 'package:portfolio_app/src/constants/app_sizes.dart';

class Skills extends StatelessWidget {
  const Skills({
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
            "Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: const [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.7,
                label: "Flutter",
              ),
            ),
            SizedBox(width: Sizes.p20),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.55,
                label: "Firebase",
              ),
            ),
            SizedBox(width: Sizes.p20),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.65,
                label: "Git",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
