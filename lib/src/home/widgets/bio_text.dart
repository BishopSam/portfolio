import 'package:flutter/material.dart';
import 'package:portfolio_app/src/constants/app_sizes.dart';

class BioText extends StatelessWidget {
  const BioText({
    Key? key,
    this.title,
    this.text,
  }) : super(key: key);

  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Sizes.p12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            title!,
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(fontWeight: FontWeight.w500),
          ),
          gapW16,
          Expanded(
              child: Text(
            text!,
            textAlign: TextAlign.end,
          )),
        ],
      ),
    );
  }
}
