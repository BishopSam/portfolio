import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio_app/src/common_widgets/responsive_widget.dart';
import 'package:portfolio_app/src/constants/app_colors.dart';
import 'package:portfolio_app/src/constants/app_sizes.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg.jpeg",
            fit: BoxFit.cover,
          ),
          Container(color: darkColor.withOpacity(0.66)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hi there 👋 \nWelcome!",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                      : Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                ),
                if (Responsive.isMobileLarge(context)) gapH12,
                const MyBuildAnimatedText(),
                gapH20,
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      // it applies same style to all the widgets under it
      style: Theme.of(context).textTheme.subtitle1!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) const FlutterCodedText(),
          if (!Responsive.isMobileLarge(context)) gapH12,
          Responsive.isMobile(context)
              ? const Expanded(child: AnimatedText())
              : const AnimatedText(),
          if (!Responsive.isMobileLarge(context)) gapH12,
          if (!Responsive.isMobileLarge(context)) const FlutterCodedText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          "🌱 I'm currently learning flutter ",
          speed: const Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "👯 I’m looking to collaborate on flutter projects ",
          speed: const Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "⚡ Fun fact: Wikipedia is downloadable. ",
          speed: const Duration(milliseconds: 60),
        ),
      ],
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "flutter",
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
  }
}
