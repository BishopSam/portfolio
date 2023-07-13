import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_app/src/common_widgets/responsive_widget.dart';
import 'package:portfolio_app/src/constants/app_sizes.dart';
import 'package:portfolio_app/src/models/live_project.dart';

class LiveProjectCard extends StatelessWidget {
  const LiveProjectCard({
    Key? key,
    required this.project,
    required this.appleStorePressed,
    required this.playStorePressed,
  }) : super(key: key);

  final LiveProject project;
  final VoidCallback appleStorePressed;
  final VoidCallback playStorePressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Sizes.p8),
      color: Theme.of(context).canvasColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 12.h,
          ),
          Text(
            project.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontSize: Responsive.isMobileLarge(context) ? 20 : 17),
          ),
          const Spacer(
            flex: 1,
          ),
          Text(
            project.description,
            maxLines: Responsive.isMobileLarge(context) ? 4 : 5,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.4),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              OutlinedButton(
                onPressed: appleStorePressed,
                child: const Icon(
                  Icons.apple,
                  color: Colors.black,
                ),
              ),
              gapW12,
              OutlinedButton(
                onPressed: playStorePressed,
                child: const Icon(
                  Icons.android,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 1,
          )
        ],
      ),
    );
  }
}
