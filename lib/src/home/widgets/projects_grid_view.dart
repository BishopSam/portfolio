import 'package:flutter/material.dart';
import 'package:portfolio_app/src/common_widgets/alert_dialogs.dart';
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
          style: Theme.of(context).textTheme.headline6!.copyWith(fontSize: 34),
        ),
        gapH12,
        Text(
          "I am a mobile app developer with just over a year experience building with flutter; 6 months of that, doing it professionally, in a corporate environment. \nI'm currently looking for the next opportunity to strengthen my skills and gain valuable career experience.",
          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 15),
        ),
        gapH20,
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.headline6!.copyWith(fontSize: 34),
        ),
        gapH20,
        const Responsive(
          mobile: ProjectsGridView(
            crossAxisCount: 1,
            childAspectRatio: 1.7,
          ),
          mobileLarge: ProjectsGridView(crossAxisCount: 2),
          tablet: ProjectsGridView(childAspectRatio: 1.1),
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
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

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
      itemCount: kTestProjects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: Sizes.p20,
        mainAxisSpacing: Sizes.p20,
      ),
      itemBuilder: (context, index) => ProjectCard(
        project: kTestProjects[index],
        onPressed: () => launchURL(kTestProjects[index].url),
      ),
    );
  }
}
