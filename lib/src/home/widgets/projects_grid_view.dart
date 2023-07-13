import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_app/src/common_widgets/alert_dialogs.dart';
import 'package:portfolio_app/src/common_widgets/live_project_card.dart';
import 'package:portfolio_app/src/common_widgets/project_card.dart';
import 'package:portfolio_app/src/common_widgets/responsive_widget.dart';
import 'package:portfolio_app/src/constants/app_sizes.dart';
import 'package:portfolio_app/src/constants/projects_list.dart';
import 'package:url_launcher/url_launcher.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        gapH20,
        Text(
          "About Me",
          style: Theme.of(context).textTheme.headline6!.copyWith(fontSize: 28),
        ),
        gapH12,
        Text(
          "I am a skilled mobile engineer with expertise in Flutter development, strong understanding of app architecture, proficient in Dart, experienced with integrating APIs and services, and well-versed in Agile methodologies.",
          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 15),
        ),
        gapH20,
        Text(
          "Live Projects",
          style: Theme.of(context).textTheme.headline6!.copyWith(fontSize: 28),
        ),
        gapH20,
        const Responsive(
            mobile: ProjectsGridView(
              crossAxisCount: 1,
              childAspectRatio: 1.7,
              islive: true,
            ),
            mobileLarge: ProjectsGridView(
              crossAxisCount: 2,
              islive: true,
            ),
            tablet: ProjectsGridView(
              childAspectRatio: 1.1,
              islive: true,
            ),
            desktop: ProjectsGridView(
              islive: true,
            )),
        gapH20,
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.headline6!.copyWith(fontSize: 28),
        ),
        gapH20,
        const Responsive(
          mobile: ProjectsGridView(
            crossAxisCount: 1,
            childAspectRatio: 1.7,
          ),
          mobileLarge: ProjectsGridView(crossAxisCount: 2),
          tablet: ProjectsGridView(
            childAspectRatio: 1.1,
          ),
          desktop: ProjectsGridView(),
        )
      ],
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
    this.islive = false,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;
  final bool islive;
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

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: islive ? kLiveProjects.length : kTestProjects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: Sizes.p20,
        mainAxisSpacing: Sizes.p20,
      ),
      itemBuilder: (context, index) => islive
          ? LiveProjectCard(
              project: kLiveProjects[index],
              appleStorePressed: () =>
                  launchURL(kLiveProjects[index].appStoreUrl),
              playStorePressed: () =>
                  launchURL(kLiveProjects[index].playStoreUrl),
            )
          : ProjectCard(
              project: kTestProjects[index],
              onPressed: () => launchURL(kTestProjects[index].url),
            ),
    );
  }
}
