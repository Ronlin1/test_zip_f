import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:efunding/routes/routes.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/custom_style.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/size.dart';
import 'package:efunding/utils/strings.dart';
import 'package:efunding/views/screens/drawer_screen.dart';
import 'package:efunding/widgets/others/categories_container_widget.dart';
import 'package:efunding/widgets/others/header_home_container_widget.dart';
import 'package:efunding/widgets/others/top_volunteer_home_widget.dart';
import 'package:efunding/widgets/others/urgent_fundrasing_container_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      drawer: const DrawerScreen(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: CustomColor.appBarColor,
        iconTheme: const IconThemeData(color: CustomColor.whiteColor),
        title: Image.asset(
          Strings.splashLogo,
          width: 100.w,
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed(Routes.profileScreen);
              },
              icon: const Icon(
                Icons.person,
                color: CustomColor.whiteColor,
              ))
        ],
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return ListView(
      children: [
        _headerContainerWidget(context),
        _categoriesWidget(context),
        addVerticalSpace(20.h),
        _urgentFundraisingTitleWidget(context),
        _urgentFundraisingWidget(context),
        addVerticalSpace(20.h),
        _popularFundraiserTitleWidget(context),
        _topVolunteerWidget(context),
        addVerticalSpace(30.h),
      ],
    );
  }

  _headerContainerWidget(BuildContext context) {
    return SizedBox(
        height: 300.h,
        child: ListView.builder(
            itemCount: 2,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const HeaderHomeContainerWidget();
            }));
  }


  _categoriesWidget(BuildContext context){
    return Column(
      children: [
        _categoriesTitleWidget(context),
        _categoriesContainerWidget(context)
      ],
    );
  }

  _categoriesTitleWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Dimensions.marginSize * 0.5),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              Strings.categories,
              style: CustomStyler.categoriesStyle,
            ),
          )
        ],
      ),
    );
  }

  _categoriesContainerWidget(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: FittedBox(
        fit: BoxFit.fill,
        alignment: Alignment.topCenter,
        child: Row(
          mainAxisAlignment: mainSpaceBet,
          children: [
            CategoriesContainerWidget(
              image: Strings.categoriesImage,
              name: Strings.medical,
              onPressed: () {
                Get.toNamed(Routes.medicalScreen);
              },
            ),
            CategoriesContainerWidget(
              image: Strings.categoriesImage,
              name: Strings.education,
              onPressed: () {
                Get.toNamed(Routes.educationScreen);
              },
            ),
            CategoriesContainerWidget(
              image: Strings.categoriesImage,
              name: Strings.church,
              onPressed: () {
                Get.toNamed(Routes.churchScreen);
              },
            ),
            CategoriesContainerWidget(
              image: Strings.categoriesImage,
              name: Strings.disaster,
              onPressed: () {
                Get.toNamed(Routes.disasterScreen);
              },
            ),
            CategoriesContainerWidget(
              image: Strings.categoriesImage,
              name: Strings.funeral,
              onPressed: () {
                Get.toNamed(Routes.funeralScreen);
              },
            ),
          ],
        ),
      ),
    );
  }

  _urgentFundraisingTitleWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
      child: Row(
        mainAxisAlignment: mainSpaceBet,
        children: [
          Text(
            Strings.urgentFundraising,
            style: CustomStyler.categoriesStyle,
          ),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.urgentFundraisingScreen);
            },
            child: Text(
              Strings.sellAll,
              style: CustomStyler.sellAllStyle,
            ),
          )
        ],
      ),
    );
  }

  _urgentFundraisingWidget(BuildContext context) {
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

  _popularFundraiserTitleWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
      child: Row(
        mainAxisAlignment: mainSpaceBet,
        children: [
          Text(
            Strings.topVolunteer,
            style: CustomStyler.categoriesStyle,
          ),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.topVolunteerScreen);
            },
            child: Text(
              Strings.sellAll,
              style: CustomStyler.sellAllStyle,
            ),
          )
        ],
      ),
    );
  }

  _topVolunteerWidget(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 130.h,
      child: ListView.builder(
          itemCount: 3,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return TopVolunteerHomeWidget(
              image: Strings.notificationImage,
              foundationNameTitle: Strings.donationKiosks,
              foundationNameSubTitle: Strings.nigerianFoundation,
            );
          }),
    );
  }



}
