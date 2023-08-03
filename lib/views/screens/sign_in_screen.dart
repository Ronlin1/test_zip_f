import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:efunding/controller/sign_in_controller.dart';
import 'package:efunding/routes/routes.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/custom_style.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/size.dart';
import 'package:efunding/utils/strings.dart';
import 'package:efunding/widgets/buttons/primary_button_widget.dart';
import 'package:efunding/widgets/inputs/input_text_field.dart';
import 'package:efunding/widgets/inputs/password_input_text_field.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);
  final _controller = Get.put(SignInController());
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
        _forgotPasswordWidget(context),
        _loginButtonWidget(context),
        addVerticalSpace(20.h),
        _signUpNowWidget(context),
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
          left: 6,
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
              Strings.signIn,
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
            Strings.signInTitle,
            style: CustomStyler.welcomeTitleStyle,
          ),
          Text(
            Strings.signInDescription,
            style: CustomStyler.welcomeDescriptionStyle,
          )
        ],
      ),
    );
  }

  _inputFieldWidget(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          addVerticalSpace(40.h),
          Container(
            margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
            child: InputTextField(
              hintText: Strings.userName,
              iconData: Icons.account_circle,
              hintTextColor: CustomColor.whiteColor,
              backgroundColor: CustomColor.primaryBackgroundColor,
              controller: _controller.userNameController,
            ),
          ),
          addVerticalSpace(20.h),
          Container(
            margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
            child: PasswordInputTextField(
              hintText: Strings.password,
              controller: _controller.passwordController,
            ),
          ),
          addVerticalSpace(15.h),
        ],
      ),
    );
  }

  _forgotPasswordWidget(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
      child: GestureDetector(
        onTap: () {
          _forgotPasswordScreen(context);
        },
        child: Text(
          Strings.forgetPass,
          style: TextStyle(color: CustomColor.whiteColor.withOpacity(0.6)),
        ),
      ),
    );
  }

  _loginButtonWidget(BuildContext context) {
    return PrimaryButtonWidget(
      title: Strings.signIn,
      onPressed: () {
        Get.toNamed(Routes.bottomNavigation);
      },
      borderColor: CustomColor.primaryColor,
      backgroundColor: CustomColor.primaryColor,
      textColor: CustomColor.whiteColor,
    );
  }

  _signUpNowWidget(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          Strings.donTHaveAccount,
          style: TextStyle(color: CustomColor.whiteColor.withOpacity(0.6)),
        ),
        GestureDetector(
          onTap: () {
            Get.toNamed(Routes.signUpScreen);
          },
          child: const Text(
            Strings.signUp,
            style: TextStyle(color: CustomColor.whiteColor),
          ),
        )
      ],
    );
  }

  _bottomImageWidget(BuildContext context) {
    return Container(
      height: Dimensions.heightSize * 20.h,
      alignment: Alignment.bottomRight,
      child: Image.asset(Strings.downBg),
    );
  }

  //Forgot Password Screen
  _forgotPasswordScreen(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CustomColor.primaryBackgroundColor,
                ),
                padding: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * 0.93,
                height: MediaQuery.of(context).size.height * 0.65,
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        addVerticalSpace(20.h),
                        Container(
                          decoration: const BoxDecoration(
                            color: CustomColor.primaryBackgroundColor,
                          ),
                          child: Image.asset(
                            Strings.forgotPassImage,
                          ),
                        ),
                        addVerticalSpace(20.h),

                        Text(
                          Strings.forgotPassword,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: CustomColor.whiteColor,
                              fontSize: Dimensions.largeTextSize + 5,
                              fontWeight: FontWeight.w700),
                        ),
                       addVerticalSpace(20.h),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize),
                          width: double.infinity,
                          child: Text(
                            Strings.forgotPasswordDescription,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: CustomColor.whiteColor.withOpacity(0.6),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.heightSize * 3,
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
                            width: double.infinity,
                            child: InputTextField(
                              hintText: Strings.email,
                              iconData: Icons.email,
                              hintTextColor: CustomColor.whiteColor.withOpacity(0.5),
                              backgroundColor: CustomColor.primaryBackgroundColor,
                              controller: _controller.emailController,
                            )),
                        PrimaryButtonWidget(
                          title: Strings.conTinue,
                          onPressed: () {
                            Get.toNamed(Routes.otpVerificationScreen);
                          },
                          textColor: CustomColor.whiteColor,
                          backgroundColor: CustomColor.primaryColor,
                          borderColor: CustomColor.primaryColor,
                        ),
                      ],
                    ),
                    Positioned(
                        top: 10,
                        right: 10,
                        child: IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: const Icon(
                            Icons.close,
                            color: CustomColor.whiteColor,
                          ),
                        ))
                  ],
                )),
          ),
        );
      },
    );
  }


}
