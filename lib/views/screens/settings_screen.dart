import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:efunding/routes/routes.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/custom_style.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/size.dart';
import 'package:efunding/utils/strings.dart';
import 'package:efunding/widgets/buttons/back_button_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      appBar: AppBar(
        title: Text(
          Strings.settings,
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
        _settingsWidget(context, () {
          Get.toNamed(Routes.twoFaSecurityScreen);
        }, Icons.security, Strings.faSecurity),
        Divider(
          color: CustomColor.whiteColor.withOpacity(0.7),
        ),
        _settingsWidget(context, () {
          Get.toNamed(Routes.changePasswordScreen);
        }, Icons.key, Strings.changePassword),
        Divider(
          color: CustomColor.whiteColor.withOpacity(0.7),
        ),
        _settingsWidget(context, () {
          Get.toNamed(Routes.changeLanguageScreen);
        }, Icons.language, Strings.changeLanguage),
        Divider(
          color: CustomColor.whiteColor.withOpacity(0.7),
        ),
        _settingsWidget(context, () {
          Get.toNamed(Routes.createNewTicketScreen);
        }, Icons.sticky_note_2, Strings.createNewTicket),
        Divider(
          color: CustomColor.whiteColor.withOpacity(0.7),
        ),
        _settingsWidget(context, () {
          Get.toNamed(Routes.myTicketScreen);
        }, Icons.sticky_note_2_outlined, Strings.myTickets),
        Divider(
          color: CustomColor.whiteColor.withOpacity(0.7),
        ),
        _settingsWidget(context, () {
          Get.toNamed(Routes.aboutUsScreen);
        }, Icons.info, Strings.aboutUs),
        Divider(
          color: CustomColor.whiteColor.withOpacity(0.7),
        ),
        _settingsWidget(context, () {
          Get.toNamed(Routes.helpCenterScreen);
        }, Icons.help_center, Strings.helpCenter),
        Divider(
          color: CustomColor.whiteColor.withOpacity(0.7),
        ),
        _settingsWidget(context, () {
          // Get.toNamed(Routes.settingsScreen);
        }, Icons.lock, Strings.privacyPolicy),
      ],
    );
  }

  _settingsWidget(BuildContext context, VoidCallback onPressed, IconData icon,
      String pageName) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(Dimensions.marginSize * 0.5),
        child: Row(
          children: [
            Icon(
              icon,
              size: 25,
              color: CustomColor.whiteColor.withOpacity(0.5),
            ),
            addHorizontalSpace(10.w),
            Text(
              pageName,
              style: CustomStyler.settingsPageTitleStyle,
            )
          ],
        ),
      ),
    );
  }
}
