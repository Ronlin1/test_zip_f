import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:efunding/controller/reset_password_controller.dart';
import 'package:efunding/routes/routes.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/custom_style.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/size.dart';
import 'package:efunding/utils/strings.dart';
import 'package:efunding/widgets/buttons/primary_button_widget.dart';
import 'package:efunding/widgets/inputs/password_input_text_field.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({Key? key}) : super(key: key);

  final _controller = Get.put(ResetPasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColor.primaryBackgroundColor,
        appBar: AppBar(
          backgroundColor: CustomColor.primaryBackgroundColor,
          elevation: 0,
          automaticallyImplyLeading: false,

          title: Text(
            Strings.resetPassword,
            style: const TextStyle(color: CustomColor.whiteColor),
          ),
        ),
        body: _bodyWidget(context));
  }

  _bodyWidget(BuildContext context) {
    return ListView(
      children: [
        _titleWidget(context),
        _inputFieldWidget(context),
        _submitButtonWidget(context),
      ],
    );
  }

  _titleWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Dimensions.marginSize),
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Dimensions.defaultPaddingSize * 0.5),
        child: Text(Strings.resetPasswordTitle,
            textAlign: TextAlign.center,
            style: CustomStyler.otpVerificationDescriptionStyle),
      ),
    );
  }

  _inputFieldWidget(BuildContext context) {
    return Form(
      key: _controller.formKey,
      child: Column(
        children: [
          addVerticalSpace(40.h),
          Container(
            margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
            child: PasswordInputTextField(
              hintText: Strings.newPassword,
              controller: _controller.newPasswordController,
            ),
          ),
          addVerticalSpace(20.h),
          Container(
            margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
            child: PasswordInputTextField(
              hintText: Strings.confirmNewPassword,
              controller: _controller.confirmNewPasswordController,
            ),
          ),
          addVerticalSpace(15.h),
        ],
      ),
    );
  }

  _submitButtonWidget(BuildContext context) {
    return PrimaryButtonWidget(
      title: Strings.resetPassword,
      onPressed: () {
        Get.toNamed(Routes.resetPasswordCongratulationsScreen);
      },
      borderColor: CustomColor.primaryColor,
      backgroundColor: CustomColor.primaryColor,
      textColor: CustomColor.whiteColor,
    );
  }
}
