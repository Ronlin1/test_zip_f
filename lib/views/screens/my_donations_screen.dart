import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/custom_style.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/size.dart';
import 'package:efunding/utils/strings.dart';
import 'package:efunding/widgets/buttons/back_button_widget.dart';

class MyDonationsScreen extends StatelessWidget {
  const MyDonationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      appBar: AppBar(
        title: Text(
          Strings.myDonations,
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
        _donateWidget(context),
      ],
    );
  }
}


_donateWidget(BuildContext context){
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
              crossAxisAlignment: crossStart,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Image.asset(Strings.notificationImage),
                      addHorizontalSpace(10.w),
                      Expanded(
                        child: Text(
                          Strings.donateForEducation, 
                          style: CustomStyler.notificationContainerTitleStyle
                          ,),
                      ),
                      
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: mainCenter,
                  crossAxisAlignment: crossEnd,
                  children: [
                    Text(Strings.date, style: CustomStyler.myDonationsDateStyle,),
                    Text(Strings.myDonationsDollar, style: CustomStyler.myDonationsMoneyStyle,),
                  ],
                )
              ],
            ),
          ),
        );

      });
}
