import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_app/src/common_widgets/alert_dialogs.dart';
import 'package:portfolio_app/src/constants/app_sizes.dart';
import 'package:portfolio_app/src/home/side_menu/widgets/bio_text.dart';
import 'package:portfolio_app/src/home/side_menu/widgets/languages.dart';
import 'package:portfolio_app/src/home/side_menu/widgets/my_skills.dart';
import 'package:portfolio_app/src/home/side_menu/widgets/personal_info.dart';
import 'package:portfolio_app/src/home/side_menu/widgets/soft_skills.dart';
import 'package:url_launcher/url_launcher.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //? move to controller class in the future when using riverpod for state management
    void launchURL(String? url) async {
      if (url != null) {
        try {
          if (await canLaunchUrl(Uri.parse(url))) {
            await launchUrl(Uri.parse(url),
                mode: LaunchMode.externalApplication);
          } else {
            throw 'Could not launch $url';
          }
        } catch (e) {
          showExceptionAlertDialog(
              context: context, title: 'Error', exception: e);
        }
      }
    }

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
                  padding: const EdgeInsets.all(Sizes.p12),
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
                          launchURL(
                              "https://drive.google.com/file/d/12LvHHWvgXjkrSa1zBtW-yRohA7F-e01P/view?usp=sharing");
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
                                launchURL(
                                    'https://linkedin.com/in/bishopuzochukwu');
                              },
                              icon:
                                  SvgPicture.asset("assets/icons/linkedin.svg"),
                            ),
                            IconButton(
                              onPressed: () {
                                launchURL('https://github.com/BishopSam');
                              },
                              icon: SvgPicture.asset("assets/icons/github.svg"),
                            ),
                            IconButton(
                              onPressed: () {
                                launchURL('https://twitter.com/bishop_ze');
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
