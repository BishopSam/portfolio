import 'package:flutter/material.dart';
import 'package:portfolio_app/src/constants/app_sizes.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SoftSkills extends StatelessWidget {
  const SoftSkills({
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
            "Technical & Non-Technical Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const SoftSkillsText(text: "Riverpod"),
        const SoftSkillsText(text: "Provider"),
        const SoftSkillsText(text: "MVVM Architecture"),
        const SoftSkillsText(text: "GIT Knowledge"),
        const SoftSkillsText(text: "Time Management"),
      ],
    );
  }
}

class SoftSkillsText extends StatelessWidget {
  const SoftSkillsText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Sizes.p12),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"),
          const SizedBox(width: Sizes.p12),
          Text(text),
        ],
      ),
    );
  }
}
