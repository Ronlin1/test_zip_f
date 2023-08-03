import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:efunding/controller/disaster_controller.dart';
import 'package:efunding/routes/routes.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/size.dart';
import 'package:efunding/utils/strings.dart';
import 'package:efunding/widgets/buttons/back_button_widget.dart';
import 'package:efunding/widgets/inputs/search_input_text_field_widget.dart';
import 'package:efunding/widgets/others/categories_child_container_widget.dart';

class DisasterScreen extends StatelessWidget {
  DisasterScreen({Key? key}) : super(key: key);
  final _controller = Get.put(DisasterController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColor.primaryBackgroundColor,
        appBar: AppBar(
          title: Text(
            Strings.disaster,
            style: const TextStyle(color: CustomColor.whiteColor),
          ),
          leading: const BackButtonWidget(),
          backgroundColor: CustomColor.appBarColor,
          elevation: 0,
        ),
        body: _bodyWidget(context));
  }


  _bodyWidget(BuildContext context){
    return ListView(
      // shrinkWrap: false,
      children: [
        addVerticalSpace(10.h),
        _searchTextFieldWidget(context),
        _listOfWidget(context)
      ],
    );
  }


  _searchTextFieldWidget(BuildContext context){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
      child: SearchInputTextFieldWidget(
          controller: _controller.searchController,
          hintText: Strings.searchCampaign,
          backgroundColor: CustomColor.primaryBackgroundColor,
          hintTextColor: CustomColor.textColor),
    );
  }


  _listOfWidget(BuildContext context){
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return CategoriesChildContainerWidget(
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
      },
    );
  }
}
