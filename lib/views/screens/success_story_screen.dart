import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:efunding/controller/success_story_controller.dart';
import 'package:efunding/routes/routes.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/size.dart';
import 'package:efunding/utils/strings.dart';
import 'package:efunding/widgets/buttons/back_button_widget.dart';
import 'package:efunding/widgets/buttons/primary_button_widget.dart';
import 'package:efunding/widgets/inputs/search_input_text_field_widget.dart';
import 'package:efunding/widgets/others/datetime.dart';
import 'package:efunding/widgets/others/filter_by_category_widget.dart';
import 'package:efunding/widgets/others/success_story_widget.dart';

class SuccessStoryScreen extends StatelessWidget {
  SuccessStoryScreen({Key? key}) : super(key: key);

  final _controller = Get.put(SuccessStoryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      appBar: AppBar(
        title: Text(
          Strings.successStory,
          style: const TextStyle(color: CustomColor.whiteColor),
        ),
        leading: const BackButtonWidget(),
        backgroundColor: CustomColor.primaryBackgroundColor,
        elevation: 0,
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return ListView(
      children: [
        addVerticalSpace(10.h),
        _searchTextFieldWidget(context),
        _listOfWidget(context),
      ],
    );
  }

  _searchTextFieldWidget(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
        child: Row(
          mainAxisAlignment: mainSpaceBet,
          children: [
            Flexible(
              child: SearchInputTextFieldWidget(
                  controller: _controller.searchController,
                  hintText: Strings.searchCampaign,
                  backgroundColor: CustomColor.primaryBackgroundColor,
                  hintTextColor: CustomColor.textColor),
            ),
            Container(
              margin: EdgeInsets.all(Dimensions.marginSize * 0.5),
              child: GestureDetector(
                onTap: () {
                  _filterScreenWidget(context);
                },
                child: Icon(
                  Icons.filter_list,
                  color: CustomColor.whiteColor.withOpacity(0.5),
                ),
              ),
            ),
          ],
        ));
  }

  _listOfWidget(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return SuccessStoryWidget(
          image: Strings.headerImage,
          title: Strings.shareNutritiousFood,
          subTitle: Strings.medical,
          date: Strings.date,
          description: Strings.composeYourMessage,
          onPressed: () {
            Get.toNamed(Routes.successStoryEachScreen);
          },
        );
      },
    );
  }

  _filterScreenWidget(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CustomColor.primaryBackgroundColor,
                ),
                padding: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * 0.93,
                height: MediaQuery.of(context).size.height * 0.50,
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: crossStart,
                      children: [
                        addVerticalSpace(40.h),
                        Text(
                          Strings.filterByCategory,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: CustomColor.whiteColor,
                              fontSize: Dimensions.smallestTextSize + 5,
                              fontWeight: FontWeight.w700),
                        ),
                        Divider(
                          color: CustomColor.whiteColor.withOpacity(0.5),
                        ),
                        const FilterByCategoryWidget(),
                        addVerticalSpace(40.h),
                        Text(
                          Strings.filterByDate,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: CustomColor.whiteColor,
                              fontSize: Dimensions.smallestTextSize + 5,
                              fontWeight: FontWeight.w700),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: Dimensions.marginSize * 0.5),
                          child: const DateTimeWidget(),
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: PrimaryButtonWidget(
                                title: Strings.cancel,
                                onPressed: () {
                                  Get.back();
                                },
                                textColor: CustomColor.whiteColor,
                                backgroundColor: Colors.red,
                                borderColor: Colors.red,
                              ),
                            ),
                            Flexible(
                              child: PrimaryButtonWidget(
                                title: Strings.search,
                                onPressed: () {
                                  // Get.toNamed(Routes.otpVerificationScreen);
                                },
                                textColor: CustomColor.whiteColor,
                                backgroundColor: CustomColor.primaryColor,
                                borderColor: CustomColor.primaryColor,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                )),
          ),
        );
      },
    );
  }
}
