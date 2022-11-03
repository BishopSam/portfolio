import 'package:flutter/material.dart';
import 'package:portfolio_app/src/common_widgets/recommendation_card.dart';
import 'package:portfolio_app/src/constants/app_sizes.dart';
import 'package:portfolio_app/src/constants/recommendations_list.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Sizes.p20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recommendations",
             style: Theme.of(context).textTheme.headline6!.copyWith(fontSize: 34),
          ),
         gapH20,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                kRecommendationsList.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: Sizes.p20),
                  child: RecommendationCard(
                    recommendation: kRecommendationsList[index],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}