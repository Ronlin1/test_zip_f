import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:efunding/controller/edit_profile_controller.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/size.dart';
import 'package:efunding/utils/strings.dart';
import 'package:efunding/widgets/buttons/back_button_widget.dart';
import 'package:efunding/widgets/buttons/primary_button_widget.dart';
import 'package:efunding/widgets/inputs/input_text_field.dart';
import 'package:efunding/widgets/others/country_code_picker_widget.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({Key? key}) : super(key: key);

  final _controller = Get.put(EditProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      appBar: AppBar(
        title: Text(
          Strings.editProfile,
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
        _profilePictureWidget(context),
        _inputFieldWidget(context),
        _updateProfileWidget(context),
        addVerticalSpace(20.h),
      ],
    );
  }

  _profilePictureWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Dimensions.defaultPaddingSize),
      child: const Center(
        child: CircleAvatar(
          radius: 60,
          backgroundColor: CustomColor.primaryColor,
          child: CircleAvatar(
            radius: 59,
            backgroundColor: CustomColor.primaryColor,
            backgroundImage: AssetImage(Strings.profileImage),
            child: Stack(children: [
              Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: CustomColor.primaryBackgroundColor,
                    child: CircleAvatar(
                      radius: 14,
                      backgroundColor: CustomColor.primaryColor,
                      child: Icon(
                        Icons.camera_alt_rounded,
                        color: CustomColor.whiteColor,
                        size: 15,
                      ),
                    ),
                  )),
            ]),
          ),
        ),
      ),
    );
  }

  _inputFieldWidget(BuildContext context) {
    return Form(
        key: _controller.formKey,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
          child: Column(
            children: [
              addVerticalSpace(40.h),
              InputTextField(
                hintText: Strings.firstName,
                iconData: Icons.account_circle,
                hintTextColor: CustomColor.whiteColor.withOpacity(0.5),
                backgroundColor: CustomColor.primaryBackgroundColor,
                controller: _controller.firstNameController,
              ),
              addVerticalSpace(20.h),
              InputTextField(
                hintText: Strings.lastName,
                iconData: Icons.account_circle,
                hintTextColor: CustomColor.whiteColor.withOpacity(0.5),
                backgroundColor: CustomColor.primaryBackgroundColor,
                controller: _controller.lastNameController,
              ),
              addVerticalSpace(20.h),
              InputTextField(
                hintText: Strings.editProfileEmail,
                iconData: Icons.email,
                hintTextColor: CustomColor.whiteColor.withOpacity(0.5),
                backgroundColor: CustomColor.primaryBackgroundColor,
                controller: _controller.emailController,
              ),
              addVerticalSpace(20.h),
              InputTextField(
                hintText: Strings.phoneNumber,
                iconData: Icons.call,
                hintTextColor: CustomColor.whiteColor.withOpacity(0.5),
                backgroundColor: CustomColor.primaryBackgroundColor,
                controller: _controller.emailController,
              ),
              addVerticalSpace(20.h),
              InputTextField(
                hintText: Strings.address,
                iconData: Icons.dns,
                hintTextColor: CustomColor.whiteColor.withOpacity(0.5),
                backgroundColor: CustomColor.primaryBackgroundColor,
                controller: _controller.emailController,
              ),
              addVerticalSpace(20.h),

              Row(
                mainAxisAlignment: mainSpaceBet,
                children: [
                  const Flexible(
                    child: CountryCodePickerWidget(),
                  ),
                  addHorizontalSpace(10.w),
                  Flexible(
                    child: InputTextField(
                      hintText: Strings.state,
                      iconData: Icons.location_city,
                      hintTextColor: CustomColor.whiteColor.withOpacity(0.5),
                      backgroundColor: CustomColor.primaryBackgroundColor,
                      controller: _controller.cityController,
                    ),
                  ),
                ],
              ),
              addVerticalSpace(20.h),
              Row(
                mainAxisAlignment: mainSpaceBet,
                children: [
                  Flexible(
                    child: InputTextField(
                      hintText: Strings.city,
                      iconData: FontAwesomeIcons.streetView,
                      hintTextColor: CustomColor.whiteColor.withOpacity(0.5),
                      backgroundColor: CustomColor.primaryBackgroundColor,
                      controller: _controller.streetController,
                    ),
                  ),
                  addHorizontalSpace(10.w),
                  Flexible(
                    child: InputTextField(
                      hintText: Strings.code,
                      iconData: Icons.vpn_key,
                      hintTextColor: CustomColor.whiteColor.withOpacity(0.5),
                      backgroundColor: CustomColor.primaryBackgroundColor,
                      controller: _controller.cityController,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  _updateProfileWidget(BuildContext context) {
    return PrimaryButtonWidget(
      title: Strings.updateProfile,
      onPressed: () {
        Get.back();
      },
      borderColor: CustomColor.primaryColor,
      backgroundColor: CustomColor.primaryColor,
      textColor: CustomColor.whiteColor,
    );
  }
}
