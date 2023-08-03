import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:efunding/routes/routes.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/custom_style.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/size.dart';
import 'package:efunding/utils/strings.dart';
import 'package:efunding/widgets/buttons/primary_button_widget.dart';

class EmailVerificationCongratulationsScreen extends StatelessWidget {
  const EmailVerificationCongratulationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      body: _bodyWidget(context),
    );
  }




  _bodyWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: mainCenter,
      crossAxisAlignment: crossCenter,
      children: [
        Image.asset(Strings.verificationImage),
        addVerticalSpace(60.h),
        _titleWidget(context),
        addVerticalSpace(40.h),
        _okayButtonWidget(context)
      ],
    );
  }

  _titleWidget(BuildContext context){
    return Column(
      children: [
        Text(
          Strings.congratulations,
          textAlign: TextAlign.center,
          style: CustomStyler.congratulationsStyle,
        ),
        addVerticalSpace(20.h),
        Container(
          margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize),
          width: double.infinity,
          child: Text(
            Strings.congratulationsDescription,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: CustomColor.whiteColor.withOpacity(0.6),
            ),
          ),
        ),
      ],
    );
  }

  _okayButtonWidget(BuildContext context) {
    return PrimaryButtonWidget(
      title: Strings.okay,
      onPressed: () {
        Get.toNamed(Routes.signInScreen);
      },
      borderColor: CustomColor.primaryColor,
      backgroundColor: CustomColor.primaryColor,
      textColor: CustomColor.whiteColor,
    );
  }
}
