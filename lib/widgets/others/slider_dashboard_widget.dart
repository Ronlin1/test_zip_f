import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:efunding/routes/routes.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/custom_style.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/size.dart';
import 'package:efunding/utils/strings.dart';

class SliderDashboardWidget extends StatelessWidget {
  const SliderDashboardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      decoration: BoxDecoration(
        color: Colors.blueGrey.withOpacity(0.5),
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
                      borderRadius: BorderRadius.circular(8.r),
                      color:
                      CustomColor.primaryColor.withOpacity(0.4),
                    ),
                    child: Text(
                      Strings.viewAll,
                      style: const TextStyle(
                          color: CustomColor.whiteColor, fontSize: 12),
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
                  child: Text("1",
                      style: CustomStyler.bigContainerTitleStyle),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(Strings.totalCampaign,
                      style: CustomStyler.bigContainerTitleStyle),
                ),
                addVerticalSpace(5.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
