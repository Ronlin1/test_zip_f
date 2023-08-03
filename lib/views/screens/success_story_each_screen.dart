import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:efunding/controller/success_story_each_controller.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/custom_style.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/size.dart';
import 'package:efunding/utils/strings.dart';
import 'package:efunding/widgets/buttons/back_button_widget.dart';
import 'package:efunding/widgets/buttons/primary_button_widget.dart';
import 'package:efunding/widgets/inputs/input_text_field.dart';

class SuccessStoryEachScreen extends StatelessWidget {
  SuccessStoryEachScreen({Key? key}) : super(key: key);
  final _controller = Get.put(SuccessStoryEachController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return ListView(
      children: [
        _imageWidget(context),
        _descriptionWidget(context),
        _detailsWidget(context),
        _commentsWidget(context),
        _commentNowWidget(context),
      ],
    );
  }

  _imageWidget(BuildContext context) {
    return Container(
      // width: 400.w,
      height: 350.h,
      decoration: BoxDecoration(
        color: CustomColor.appBarColor,
        image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.6), BlendMode.dstATop),
            image: const ExactAssetImage(Strings.headerImage),
            fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: mainSpaceBet,
        crossAxisAlignment: crossEnd,
        children: [
          Padding(
            padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.3),
            child: Column(
              mainAxisAlignment: mainStart,
              crossAxisAlignment: crossEnd,
              children: [
                Row(
                  mainAxisAlignment: mainSpaceBet,
                  children: [
                    const BackButtonWidget(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.share,
                          color: CustomColor.whiteColor,
                        ))
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.2),
            child: Column(
              mainAxisAlignment: mainStart,
              crossAxisAlignment: crossEnd,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.defaultPaddingSize * 0.3),
                  child: Text(Strings.shareNutritiousFood,
                      style: CustomStyler.donateNowTitleStyle),
                ),
                addVerticalSpace(5.h),
                Column(
                  crossAxisAlignment: crossEnd,
                  children: [
                    SizedBox(
                      height: 70.h,
                      child: Padding(
                        padding:
                            EdgeInsets.all(Dimensions.defaultPaddingSize * 0.3),
                        child: Row(
                          mainAxisAlignment: mainStart,
                          crossAxisAlignment: crossStart,
                          children: [
                            Image.asset(Strings.notificationImage),
                            addHorizontalSpace(10.w),
                            Column(
                              mainAxisAlignment: mainCenter,
                              crossAxisAlignment: crossStart,
                              children: [
                                Text(
                                  Strings.donateForEducation,
                                  style: CustomStyler.donateNowSubTitleStyle,
                                ),
                                Text(
                                  Strings.date,
                                  style: CustomStyler
                                      .notificationContainerDateStyle,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  _descriptionWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Dimensions.marginSize * 0.5),
      child: Column(
        mainAxisAlignment: mainStart,
        crossAxisAlignment: crossStart,
        children: [
          Text(
            Strings.description,
            style: CustomStyler.bigContainerTitleStyle,
          ),
          addVerticalSpace(10.w),
          Text(
            Strings.descriptionDetailsOne,
            style: CustomStyler.descriptionDetailsStyle,
          ),
        ],
      ),
    );
  }

  _detailsWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Dimensions.marginSize * 0.5),
      padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.2),
      child: Column(
        mainAxisAlignment: mainStart,
        crossAxisAlignment: crossEnd,
        children: [
          Row(
            mainAxisAlignment: mainSpaceBet,
            children: [
              Row(
                children: [
                  Text(
                    Strings.education,
                    style: CustomStyler.bigContainerSmallStyle,
                  ),
                  addHorizontalSpace(10.w),
                  Text(
                    "|",
                    style: CustomStyler.bigContainerSmallStyle,
                  ),
                  addHorizontalSpace(10.w),
                  Text(
                    Strings.date,
                    style: CustomStyler.bigContainerSmallStyle,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: mainSpaceBet,
                children: [
                  Text(
                    Strings.comments,
                    style: CustomStyler.bigContainerSmallStyle,
                  ),
                  addHorizontalSpace(10.w),
                  Text(
                    "|",
                    style: CustomStyler.bigContainerSmallStyle,
                  ),
                  addHorizontalSpace(10.w),
                  Text(
                    Strings.views,
                    style: CustomStyler.bigContainerSmallStyle,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  _commentsWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: crossEnd,
      children: [
        SizedBox(
          height: 70.h,
          child: Padding(
            padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.3),
            child: Row(
              mainAxisAlignment: mainSpaceBet,
              crossAxisAlignment: crossStart,
              children: [
                Row(
                  crossAxisAlignment: crossStart,
                  children: [
                    Image.asset(Strings.profileImage),
                    addHorizontalSpace(10.w),
                    Column(
                      mainAxisAlignment: mainCenter,
                      crossAxisAlignment: crossStart,
                      children: [
                        Text(
                          Strings.profileName,
                          style: CustomStyler.donateNowSubTitleStyle,
                        ),
                        Text(
                          Strings.comment,
                          style: CustomStyler.commentDateStyle,
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: mainCenter,
                  children: [
                    Text(
                      Strings.date,
                      style: CustomStyler.notificationContainerDateStyle,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  _commentNowWidget(BuildContext context) {
    return PrimaryButtonWidget(
      title: Strings.leaveAComment,
      onPressed: () {
        _leaveACommentWidget(context);
      },
      borderColor: CustomColor.primaryColor,
      backgroundColor: CustomColor.primaryColor,
      textColor: CustomColor.whiteColor,
    );
  }

  _leaveACommentWidget(BuildContext context) {
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
                height: MediaQuery.of(context).size.height * 0.40,
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        addVerticalSpace(80.h),
                        Text(
                          Strings.leaveAComment,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: CustomColor.whiteColor,
                              fontSize: Dimensions.largeTextSize + 5,
                              fontWeight: FontWeight.w700),
                        ),
                        addVerticalSpace(20.h),
                        Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: Dimensions.marginSize * 0.5),
                            width: double.infinity,
                            child: InputTextField(
                              hintText: Strings.writeHere,
                              iconData: Icons.comment_bank_outlined,
                              hintTextColor:
                                  CustomColor.whiteColor.withOpacity(0.5),
                              backgroundColor:
                                  CustomColor.primaryBackgroundColor,
                              controller: _controller.commentController,
                            )),
                        PrimaryButtonWidget(
                          title: Strings.conTinue,
                          onPressed: () {
                            Get.back();
                          },
                          textColor: CustomColor.whiteColor,
                          backgroundColor: CustomColor.primaryColor,
                          borderColor: CustomColor.primaryColor,
                        ),
                      ],
                    ),
                    Positioned(
                        top: 10,
                        right: 10,
                        child: IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: const Icon(
                            Icons.close,
                            color: CustomColor.whiteColor,
                          ),
                        ))
                  ],
                )),
          ),
        );
      },
    );
  }
}
