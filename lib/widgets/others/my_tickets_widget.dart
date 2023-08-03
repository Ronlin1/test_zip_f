import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/custom_style.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/size.dart';
import 'package:efunding/utils/strings.dart';

class MyTicketsWidget extends StatelessWidget {
  const MyTicketsWidget({Key? key, required this.title, required this.ticketIssue, required this.time, required this.type}) : super(key: key);
  final String title;
  final String ticketIssue;
  final String time;
  final String type;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      margin:
      EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.3),
      child: Padding(
        padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.3),
        child: Row(
          mainAxisAlignment: mainSpaceBet,
          crossAxisAlignment: crossCenter,
          children: [
            Row(
              children: [
                const Icon(
                  FontAwesomeIcons.database,
                  color: CustomColor.gray,
                  size: 30,
                ),
                addHorizontalSpace(10.w),
                Column(
                  crossAxisAlignment: crossStart,
                  children: [
                    Text(
                      title,
                      style: CustomStyler.notificationContainerTitleStyle,
                    ),
                    Text(
                      ticketIssue,
                      style:
                      CustomStyler.notificationContainerSubTitleStyle,
                    ),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: mainCenter,
              crossAxisAlignment: crossEnd,
              children: [
                Text(
                  time,
                  style: CustomStyler.myDonationsDateStyle,
                ),
                addVerticalSpace(5.h),
                Container(
                  height: 30.h,
                  padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.2),
                  decoration: BoxDecoration(
                      color: type == Strings.solved ? Colors.green : type == Strings.pending ? Colors.orange : type == Strings.rejected ? Colors.red : null
                  ),
                  child: Text(
                    type,
                    style: CustomStyler.myDonationsMoneyStyle,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
