import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:efunding/controller/two_fa_security_controller.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/size.dart';
import 'package:efunding/utils/strings.dart';
import 'package:efunding/widgets/buttons/back_button_widget.dart';
import 'package:efunding/widgets/buttons/primary_button_widget.dart';
import 'package:efunding/widgets/others/two_fa_security_text_field_widget.dart';



class TwoFASecurityScreen extends StatelessWidget {
   TwoFASecurityScreen({Key? key}) : super(key: key);
  final _controller = Get.put(TwoFaSecurityController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      appBar: AppBar(
        title: Text(
          Strings.faSecurity,
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
        addVerticalSpace(10.h),
        _qrCodeWidget(context),
        _enableButtonWidget(context),
      ],
    );
  }

  _qrCodeWidget(BuildContext context) {
    return Container(
      height: 380.h,
      margin: EdgeInsets.all(Dimensions.marginSize),
      decoration: BoxDecoration(
        color: CustomColor.appBarColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(Dimensions.defaultPaddingSize),
            child: Image.asset(Strings.qrCodeImage),
          ),
          Container(
            margin:
            EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
            child: TwoFaSecurityTextFieldWidget(
                controller: _controller.twoFactorAuthController,
                hintText: Strings.twoFactorAuthCode,
                backgroundColor: CustomColor.primaryBackgroundColor,
                hintTextColor: CustomColor.textColor),
          ),

        ],
      ),
    );
  }


  _enableButtonWidget(BuildContext context) {
    return PrimaryButtonWidget(
      title: Strings.enable,
      onPressed: () {
        Get.back();
      },
      borderColor: CustomColor.primaryColor,
      backgroundColor: CustomColor.primaryColor,
      textColor: CustomColor.whiteColor,
    );
  }
}
