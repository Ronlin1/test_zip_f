import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/custom_style.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/size.dart';

class SuccessStoryWidget extends StatelessWidget {
  const SuccessStoryWidget(
      {Key? key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.date,
      required this.description, required this.onPressed})
      : super(key: key);

  final String image;
  final String title;
  final String subTitle;
  final String date;
  final String description;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(Dimensions.marginSize * 0.3),
        decoration: BoxDecoration(
          color: CustomColor.appBarColor,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          children: [
            _imageContainerWidget(context),
            addHorizontalSpace(10.w),
            Column(
              crossAxisAlignment: crossStart,
              children: [
                Column(
                  mainAxisAlignment: mainStart,
                  crossAxisAlignment: crossStart,
                  children: [
                    _containerTitle(context),
                    addVerticalSpace(5.h),
                    _subTitleWidget(context),
                    addVerticalSpace(10.h),
                    _descriptionWidget(context),
                  ],
                ),
                addVerticalSpace(5.h),
                // _detailsWidget(context),
              ],
            )
          ],
        ),
      ),
    );
  }

  _imageContainerWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.3),
      child: Container(
          width: 100.w,
          height: 100.h,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(
              Radius.circular(12.r),
            ),
          ),
          child: Image.asset(image)),
    );
  }

  _containerTitle(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: CustomStyler.nigerianMedicalDevTitleStyle,
        )
      ],
    );
  }

  _subTitleWidget(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: mainStart,
          crossAxisAlignment: crossStart,
          children: [
            Text(
              subTitle,
              style: CustomStyler.accomplishedCampaignSubTitleStyle,
            ),
            addHorizontalSpace(5.w),
            Text(
              date,
              style: CustomStyler.accomplishedCampaignSubTitleStyle,
            ),
          ],
        )
      ],
    );
  }

  _descriptionWidget(BuildContext context) {
    return Column(
      children: [
        Text(
          description,
          textAlign: TextAlign.justify,
          style: CustomStyler.accomplishedCampaignGoalSubTitleStyle,
        ),
      ],
    );
  }
}
