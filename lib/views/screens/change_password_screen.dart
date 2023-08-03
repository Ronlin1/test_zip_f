import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:efunding/controller/chnage_password_controller.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/size.dart';
import 'package:efunding/utils/strings.dart';
import 'package:efunding/widgets/buttons/back_button_widget.dart';
import 'package:efunding/widgets/buttons/primary_button_widget.dart';
import 'package:efunding/widgets/inputs/password_input_text_field.dart';

class ChangePasswordScreen extends StatelessWidget {
  ChangePasswordScreen({Key? key}) : super(key: key);
  final _controller = Get.put(ChangePasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      appBar: AppBar(
        title: Text(
          Strings.changePassword,
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
        _inputFieldWidget(context),
        _changePasswordButtonWidget(context)
      ],
    );
  }


  _inputFieldWidget(BuildContext context) {
    return Form(
      key: _controller.formKey,
      child: Container(
        margin: EdgeInsets.all(Dimensions.marginSize * 0.5),
        child: Column(
          children: [
            PasswordInputTextField(
              hintText: Strings.oldPassword,
              controller: _controller.oldpasswordController,
            ),
            addVerticalSpace(10.h),
            PasswordInputTextField(
              hintText: Strings.newPassword,
              controller: _controller.newPasswordController,
            ),
            addVerticalSpace(10.h),
            PasswordInputTextField(
              hintText: Strings.confirmNewPassword,
              controller: _controller.confirmPasswordController,
            ),
          ],
        ),
      )
    );
  }


  _changePasswordButtonWidget(BuildContext context) {
    return PrimaryButtonWidget(
      title: Strings.changePassword,
      onPressed: () {
        Get.back();
      },
      borderColor: CustomColor.primaryColor,
      backgroundColor: CustomColor.primaryColor,
      textColor: CustomColor.whiteColor,
    );
  }
}
