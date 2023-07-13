import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_app/src/common_widgets/responsive_widget.dart';
import 'package:portfolio_app/src/constants/app_sizes.dart';
import 'package:portfolio_app/src/models/project.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({Key? key, required this.project, required this.onPressed})
      : super(key: key);

  final Project project;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Sizes.p16),
      color: Theme.of(context).canvasColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(
            flex: 1,
          ),
          Text(
            project.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontSize: Responsive.isMobileLarge(context) ? 20 : 17),
          ),
          const Spacer(),
          Text(
            project.description,
            maxLines: Responsive.isMobileLarge(context) ? 4 : 5,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.4),
          ),
          const Spacer(),
          Align(
            alignment: Alignment.bottomRight,
            child: OutlinedButton(
                onPressed: onPressed,
                child: SvgPicture.asset(
                  "assets/icons/github.svg",
                )),
          ),
          const Spacer(
            flex: 1,
          )
        ],
      ),
    );
  }
}
