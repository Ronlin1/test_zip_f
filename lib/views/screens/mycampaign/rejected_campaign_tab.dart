import 'package:flutter/material.dart';
import 'package:efunding/utils/strings.dart';
import 'package:efunding/widgets/others/my_campaign_widget.dart';

class RejectedCampaignTab extends StatelessWidget {
  const RejectedCampaignTab({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return _bodyWidget(context);
  }

  Widget _bodyWidget(BuildContext context) {
    return _rejectedContainerWidget(context);
  }

  _rejectedContainerWidget(BuildContext context) {
    return ListView.builder(
      // physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return MyCampaignWidget(
          image: Strings.headerImage,
          title: Strings.shareNutritiousFood,
          totalCampaignDays: Strings.totalDays,
          totalGoalAmount: Strings.shareNutritiousFoodMoneyGoal,
          totalReachAmount: Strings.reachMoney,
        );
      },
    );
  }
}
