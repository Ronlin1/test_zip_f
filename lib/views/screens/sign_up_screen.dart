import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:efunding/controller/sign_up_controller.dart';
import 'package:efunding/routes/routes.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/custom_style.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/size.dart';
import 'package:efunding/utils/strings.dart';
import 'package:efunding/widgets/buttons/primary_button_widget.dart';
import 'package:efunding/widgets/inputs/input_text_field.dart';
import 'package:efunding/widgets/inputs/password_input_text_field.dart';
import 'package:efunding/widgets/inputs/phone_number_input_textfield_widget.dart';
import 'package:efunding/widgets/others/country_code_picker_widget.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  final _controller = Get.put(SignUpController());
  final formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return ListView(
      children: [
        _backButtonWidget(context),
        _titleAndDescriptionWidget(context),
        _inputFieldWidget(context),
        _signUpButtonWidget(context),
        addVerticalSpace(20.h),
        _signInNowWidget(context),
        _bottomImageWidget(context),
      ],
    );
  }

  _backButtonWidget(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: Dimensions.heightSize * 20.h,
          alignment: Alignment.topLeft,
          child: Image.asset(Strings.upperBg),
        ),
        Positioned(
          left: 8,
          top: 30,
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: CircleAvatar(
              maxRadius: 20,
              backgroundColor:
                  CustomColor.primaryColor.withOpacity(0.6),
              child: const Icon(
                Icons.arrow_back_ios,
                color: CustomColor.whiteColor,
                size: 20,
              ),
            ),
          ),
        ),
        Positioned(
            left: 62,
            top: 38,
            child: Text(
              Strings.signUp,
              style: CustomStyler.signInStyle,
            ))
      ],
    );
  }

  _titleAndDescriptionWidget(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.all(Dimensions.marginSize),
      child: Column(
        mainAxisAlignment: mainStart,
        crossAxisAlignment: crossStart,
        children: [
          Text(
            Strings.signUpTitle,
            style: CustomStyler.welcomeTitleStyle,
          ),
          Text(
            Strings.signUpDescription,
            style: CustomStyler.welcomeDescriptionStyle,
          )
        ],
      ),
    );
  }

  _inputFieldWidget(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),

        child: Column(
          children: [
            InputTextField(
              hintText: Strings.firstName,
              iconData: Icons.person,
              hintTextColor: CustomColor.whiteColor.withOpacity(0.5),
              backgroundColor: CustomColor.primaryBackgroundColor,
              controller: _controller.firstNameController,
            ),
            addVerticalSpace(20.h),
            InputTextField(
              hintText: Strings.lastName,
              iconData: Icons.person,
              hintTextColor: CustomColor.whiteColor.withOpacity(0.5),
              backgroundColor: CustomColor.primaryBackgroundColor,
              controller: _controller.lastNameController,
            ),
            addVerticalSpace(20.h),

            InputTextField(
              hintText: Strings.userName,
              iconData: Icons.account_circle,
              hintTextColor: CustomColor.whiteColor.withOpacity(0.5),
              backgroundColor: CustomColor.primaryBackgroundColor,
              controller: _controller.userNameController,
            ),
            addVerticalSpace(20.h),
            InputTextField(
              hintText: Strings.email,
              iconData: Icons.email,
              hintTextColor: CustomColor.whiteColor.withOpacity(0.5),
              backgroundColor: CustomColor.primaryBackgroundColor,
              controller: _controller.emailController,
            ),
            addVerticalSpace(20.h),
            PhoneNumberInputTextFieldWidget(
                controller: _controller.phoneNumberController,
                hintText: Strings.enterPhoneNumber,
                backgroundColor: CustomColor.primaryBackgroundColor,
                hintTextColor: CustomColor.whiteColor.withOpacity(0.5)),
            addVerticalSpace(20.h),
            const CountryCodePickerWidget(),
            addVerticalSpace(20.h),
            PasswordInputTextField(
              hintText: Strings.password,
              controller: _controller.passwordController,
            ),
            addVerticalSpace(20.h),
            PasswordInputTextField(
              hintText: Strings.confirmPassword,
              controller: _controller.confirmPasswordController,
            ),
            addVerticalSpace(20.h),
          ],
        ),
      )
    );
  }
}

_signUpButtonWidget(BuildContext context) {
  return PrimaryButtonWidget(
    title: Strings.signUp,
    onPressed: () {
      Get.toNamed(Routes.emailVerificationScreen);
    },
    borderColor: CustomColor.primaryColor,
    backgroundColor: CustomColor.primaryColor,
    textColor: CustomColor.whiteColor,
  );
}

_signInNowWidget(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        Strings.alreadyHaveAnAccount,
        style: TextStyle(color: CustomColor.whiteColor.withOpacity(0.6)),
      ),
      GestureDetector(
        onTap: () {
          Get.toNamed(Routes.signInScreen);
        },
        child: const Text(
          Strings.signIn,
          style: TextStyle(color: CustomColor.whiteColor),
        ),
      )
    ],
  );
}

_bottomImageWidget(BuildContext context) {
  return Container(
    height: Dimensions.heightSize * 15.h,
    alignment: Alignment.bottomRight,
    child: Image.asset(Strings.downBg),
  );
}
