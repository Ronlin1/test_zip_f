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
import 'package:efunding/widgets/others/my_wallet_widget.dart';
import 'package:efunding/widgets/others/urgent_fundrasing_container_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      appBar: AppBar(
        title: Text(
          Strings.profile,
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
        _profileImageWidget(context),
        _myWalletWidget(context),
        _myCampaignWidget(context),
        _accomplishedCampaignWidget(context),
      ],
    );
  }

  _profileImageWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.3),
      padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.3),
      child: Column(
        mainAxisAlignment: mainCenter,
        crossAxisAlignment: crossCenter,
        children: [
          addVerticalSpace(30.h),
          Image.asset(Strings.profileImage),
          Text(Strings.profileName,
              style: CustomStyler.donationKiosksTitleStyle),
          Text(
            Strings.profileOrg,
            style: CustomStyler.donationKiosksSubTitleStyle,
          )
        ],
      ),
    );
  }

  //My Wallet
  _myWalletWidget(BuildContext context) {
    return Column(
      children: [
        addVerticalSpace(20.h),
        _myWalletTitleWidget(context),
        _myWalletContainerWidget(context),
      ],
    );
  }

  _myWalletTitleWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
      child: TextLabelsWidget(textLabels: Strings.myWallet),
    );
  }

  _myWalletContainerWidget(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: FittedBox(
        fit: BoxFit.fill,
        alignment: Alignment.topCenter,
        child: Row(
          mainAxisAlignment: mainSpaceBet,
          children: [
            Container(
              margin:
                  EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.3),
              child: MyWalletWidget(
                  currentBalance: Strings.currentBalance,
                  currentBalanceMoney: Strings.currentBalanceMoney,
                  recentDepositOrWithdraw: Strings.recentDeposit,
                  recentDepositOrWithdrawMoney: Strings.recentDepositMoney,
                  buttonName: Strings.deposit,
                  onPressed: () {
                    Get.toNamed(Routes.depositMethodScreen);
                  }),
            ),
            Container(
              margin:
                  EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.3),
              child: MyWalletWidget(
                  currentBalance: Strings.currentBalance,
                  currentBalanceMoney: Strings.currentBalanceMoney,
                  recentDepositOrWithdraw: Strings.recentWithdraw,
                  recentDepositOrWithdrawMoney: Strings.recentWithdrawMoney,
                  buttonName: Strings.withdraw,
                  onPressed: () {
                    Get.toNamed(Routes.withdrawMethodScreen);
                  }),
            )
          ],
        ),
      ),
    );
  }

  //My Campaign
  _myCampaignWidget(BuildContext context) {
    return Column(
      children: [
        addVerticalSpace(10.h),
        _myCampaignTitleWidget(context),
        _myCampaignContainerWidget(context),
      ],
    );
  }

  _myCampaignTitleWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
      child: TextLabelsWidget(textLabels: Strings.myCampaign),
    );
  }

  _myCampaignContainerWidget(BuildContext context) {
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

  //Accomplished Campaign
  _accomplishedCampaignWidget(BuildContext context) {
    return Column(
      children: [
        addVerticalSpace(10.h),
        _accomplishedCampaignTitleWidget(context),
        _accomplishedCampaignContainerWidget(context),
        addVerticalSpace(20.h),

      ],
    );
  }

  _accomplishedCampaignTitleWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
      child: TextLabelsWidget(textLabels: Strings.accomplishedCampaign),
    );
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
