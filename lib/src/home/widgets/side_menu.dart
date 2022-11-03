import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_app/src/constants/app_sizes.dart';
import 'package:portfolio_app/src/home/widgets/bio_text.dart';
import 'package:portfolio_app/src/home/widgets/languages.dart';
import 'package:portfolio_app/src/home/widgets/my_skills.dart';
import 'package:portfolio_app/src/home/widgets/personal_info.dart';
import 'package:portfolio_app/src/home/widgets/soft_skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const PersonalInfo(),
              Flexible(
                fit: FlexFit.loose,
                child: Padding(
                  padding: const EdgeInsets.all(Sizes.p20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const BioText(
                        title: "Residence",
                        text: "Nigeria",
                      ),
                      const BioText(
                        title: "City",
                        text: "Owerri/Abuja",
                      ),
                      const BioText(
                        title: "Slack",
                        text: "Bishopeze",
                      ),
                      const BioText(
                        title: "Email",
                        text: "bishopuzichukwu37@gmail.com",
                      ),
                      const Skills(),
                      gapH20,
                      const Languages(),
                      const SoftSkills(),
                      const Divider(),
                      gapH12,
                      TextButton(
                        onPressed: () {},
                        child: FittedBox(
                          child: Row(
                            children: [
                              Text(
                                "DOWNLOAD CV",
                                style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                ),
                              ),
                              gapH12,
                              SvgPicture.asset("assets/icons/download.svg")
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: Sizes.p20),
                        color: const Color(0xFF24242E),
                        child: Row(
                          children: [
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon:
                                  SvgPicture.asset("assets/icons/linkedin.svg"),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset("assets/icons/github.svg"),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon:
                                  SvgPicture.asset("assets/icons/twitter.svg"),
                            ),
                            const Spacer(),
                          ],
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
