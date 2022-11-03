import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_app/src/common_widgets/alert_dialogs.dart';
import 'package:portfolio_app/src/constants/app_sizes.dart';
import 'package:portfolio_app/src/home/widgets/bio_text.dart';
import 'package:portfolio_app/src/home/widgets/languages.dart';
import 'package:portfolio_app/src/home/widgets/my_skills.dart';
import 'package:portfolio_app/src/home/widgets/personal_info.dart';
import 'package:portfolio_app/src/home/widgets/soft_skills.dart';
import 'package:url_launcher/url_launcher.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  _launchURL(String? url) async {
    if (url != null) {
      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
      } else {
        throw 'Could not launch $url';
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
                        text: "bishopuzochukwu37@gmail.com",
                      ),
                      const Skills(),
                      gapH20,
                      const Languages(),
                      const SoftSkills(),
                      const Divider(),
                      gapH12,
                      TextButton(
                        onPressed: () {
                          showNotImplementedAlertDialog(context: context);
                        },
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
                              onPressed: () {
                                _launchURL(
                                    'https://linkedin.com/in/bishopuzochukwu');
                              },
                              icon:
                                  SvgPicture.asset("assets/icons/linkedin.svg"),
                            ),
                            IconButton(
                              onPressed: () {
                                _launchURL('https://github.com/BishopSam');
                              },
                              icon: SvgPicture.asset("assets/icons/github.svg"),
                            ),
                            IconButton(
                              onPressed: () {
                                _launchURL('https://twitter.com/bishop_ze');
                              },
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
