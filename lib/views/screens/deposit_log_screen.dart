import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/custom_style.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/size.dart';
import 'package:efunding/utils/strings.dart';
import 'package:efunding/widgets/buttons/back_button_widget.dart';

class DepositLogScreen extends StatelessWidget {
  const DepositLogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      appBar: AppBar(
        title: Text(
          Strings.depositLog,
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
        _depositListWidget(context),
      ],
    );
  }
}


_depositListWidget(BuildContext context){
  return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 6,
      itemBuilder: (BuildContext context, int index){
        return Container(
          height: 90.h,
          margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.3),
          child: Padding(
            padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.3),
            child: Row(
              mainAxisAlignment: mainSpaceBet,
              crossAxisAlignment: crossCenter,
              children: [
                Row(
                  children: [
                    const Icon(FontAwesomeIcons.database, color: CustomColor.gray, size: 30,),
                    addHorizontalSpace(10.w),
                    Column(
                      crossAxisAlignment: crossStart,
                      children: [
                        Text(Strings.donateForEducation, style: CustomStyler.notificationContainerTitleStyle,),
                        Text(Strings.trx, style: CustomStyler.notificationContainerSubTitleStyle,),


                      ],
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: mainCenter,
                  crossAxisAlignment: crossEnd,
                  children: [
                    Text(Strings.date, style: CustomStyler.myDonationsDateStyle,),
                    addVerticalSpace(5.h),
                    Text(Strings.myDonationsDollar, style: CustomStyler.myDonationsMoneyStyle,),
                  ],
                )
              ],
            ),
          ),
        );

      });
}
