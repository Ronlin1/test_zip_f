import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:efunding/routes/routes.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/custom_style.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/size.dart';
import 'package:efunding/utils/strings.dart';
import 'package:efunding/widgets/others/slider_widget.dart';


class HeaderHomeContainerWidget extends StatelessWidget {
  const HeaderHomeContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.w,
      decoration: BoxDecoration(
        color: CustomColor.appBarColor,
        image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.6), BlendMode.dstATop),
            image: const ExactAssetImage(Strings.headerImage),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(15.r),
      ),
      margin: EdgeInsets.all(Dimensions.marginSize * 0.3),
      padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.5),
      child: Column(
        mainAxisAlignment: mainSpaceBet,
        crossAxisAlignment: crossEnd,
        children: [
          Padding(
            padding:
            EdgeInsets.all(Dimensions.defaultPaddingSize * 0.3),
            child: Column(
              mainAxisAlignment: mainStart,
              crossAxisAlignment: crossEnd,
              children: [
                InkWell(
                  onTap: () {
                    Get.toNamed(Routes.donateNowScreen);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 80.h,
                    height: 35.h,
                    padding: EdgeInsets.all(
                        Dimensions.defaultPaddingSize * 0.3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.r),
                      color:
                      CustomColor.primaryColor.withOpacity(0.4),
                    ),
                    child: Text(
                      Strings.donateNow,
                      style: const TextStyle(
                          color: CustomColor.whiteColor, fontSize: 8),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding:
            EdgeInsets.all(Dimensions.defaultPaddingSize * 0.2),
            child: Column(
              mainAxisAlignment: mainStart,
              crossAxisAlignment: crossEnd,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(Strings.shareNutritiousFood,
                      style: CustomStyler.bigContainerTitleStyle),
                ),
                addVerticalSpace(5.h),
                Column(
                  crossAxisAlignment: crossEnd,
                  children: [
                    Row(
                      mainAxisAlignment: mainSpaceBet,
                      children: [
                        Text(
                          Strings.shareNutritiousFoodMoney,
                          maxLines: 2,
                          style: CustomStyler.bigContainerSmallStyle,
                        ),
                        Text(
                          Strings.shareNutritiousFoodLeftDays,
                          maxLines: 2,
                          style: CustomStyler.bigContainerSmallStyle,
                        ),
                      ],
                    ),
                    addVerticalSpace(5.h),
                    SizedBox(
                      height: 5.h,
                      child: const SliderWidget(),
                    ),
                    addVerticalSpace(5.h),
                    Row(
                      mainAxisAlignment: mainSpaceBet,
                      children: [
                        Text(
                          Strings
                              .shareNutritiousFoodDonatedPercentage,
                          maxLines: 2,
                          style: CustomStyler.bigContainerSmallStyle,
                        ),
                        Row(
                          children: [
                            Text(
                              Strings.goal,
                              maxLines: 2,
                              style:
                              CustomStyler.bigContainerSmallStyle,
                            ),
                            Text(
                              Strings.shareNutritiousFoodMoneyGoal,
                              maxLines: 2,
                              style:
                              CustomStyler.bigContainerSmallStyle,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
