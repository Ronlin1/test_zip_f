import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:efunding/routes/routes.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/custom_style.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/size.dart';
import 'package:efunding/utils/strings.dart';
import 'package:efunding/widgets/buttons/back_button_widget.dart';
import 'package:efunding/widgets/labels/text_labels_widget.dart';
import 'package:efunding/widgets/others/accomplished_campaingn_container_widget.dart';
import 'package:efunding/widgets/others/urgent_fundrasing_container_widget.dart';

class TopVolunteerUserScreen extends StatelessWidget {
  const TopVolunteerUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      appBar: AppBar(
        title: Text(
          Strings.donationKiosks,
          style: const TextStyle(color: CustomColor.whiteColor),
        ),
        leading: const BackButtonWidget(),
        backgroundColor: CustomColor.appBarColor,
        elevation: 0,
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return ListView(
      children: [
        _headerWidget(context),
        addVerticalSpace(10.h),
        _recentActivitiesTitleWidget(context),
        _recentActivitiesContainerWidget(context),
        addVerticalSpace(10.h),
        _accomplishedCampaignTitleWidget(context),
        _accomplishedCampaignContainerWidget(context),
      ],
    );
  }

  _headerWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.3),
      padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.3),
      child: Column(
        mainAxisAlignment: mainCenter,
        crossAxisAlignment: crossCenter,
        children: [
          Image.asset(Strings.donationKiosksImage),
          Text(Strings.donationKiosks,
              style: CustomStyler.donationKiosksTitleStyle),
          Text(
            Strings.nigerianFoundation,
            style: CustomStyler.donationKiosksSubTitleStyle,
          )
        ],
      ),
    );
  }

  _recentActivitiesTitleWidget(BuildContext context) {
    return TextLabelsWidget(textLabels: Strings.recentActivities,);
  }

  _recentActivitiesContainerWidget(BuildContext context) {
    return SizedBox(
        height: 240.h,
        child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 2,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return UrgentFundraisingContainerWidget(
                image: Strings.headerImage,
                title: Strings.nigerianMedicalDev,
                foundationNameTitle: Strings.nigerianMedicalDev,
                foundationNameSubTitle: Strings.nigerianFoundation,
                totalDonatedMoney: Strings.shareNutritiousFoodMoney,
                donateDaysLeft: Strings.shareNutritiousFoodLeftDays,
                totalDonatedPercentage:
                    Strings.shareNutritiousFoodDonatedPercentage,
                totalDonatedGoal: Strings.shareNutritiousFoodMoneyGoal,
                onPressed: () {
                  Get.toNamed(Routes.donateNowScreen);
                },
              );
            }));
  }

  _accomplishedCampaignTitleWidget(BuildContext context) {
    return TextLabelsWidget(textLabels: Strings.accomplishedCampaign,);
  }

  _accomplishedCampaignContainerWidget(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return AccomplishedCampaignContainerWidget(
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




