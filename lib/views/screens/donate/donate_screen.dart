import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:efunding/controller/donate_controller.dart';
import 'package:efunding/routes/routes.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/custom_style.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/size.dart';
import 'package:efunding/utils/strings.dart';
import 'package:efunding/widgets/buttons/back_button_widget.dart';
import 'package:efunding/widgets/buttons/primary_button_widget.dart';
import 'package:efunding/widgets/inputs/amount_input_text_widget.dart';
import 'package:efunding/widgets/inputs/description_input_text_field_widget.dart';
import 'package:efunding/widgets/labels/text_labels_widget.dart';
import 'package:efunding/widgets/others/donate_selector_widget.dart';

class DonateScreen extends StatelessWidget {
  DonateScreen({Key? key}) : super(key: key);
  final _controller = Get.put(DonateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      appBar: AppBar(
        title: Text(
          Strings.donate,
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
        _headerContainer(context),
        _amountWidget(context),
        _amountSelectorWidget(context),
        _messageWidget(context),
        _proceedButtonWidget(context),
      ],
    );
  }

  _headerContainer(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Dimensions.marginSize * 0.5),
      decoration: BoxDecoration(
        color: CustomColor.appBarColor,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.3),
            child: Image.asset(
              Strings.headerImage,
              width: 100.w,
            ),
          ),
          Column(
            crossAxisAlignment: crossStart,
            children: [
              Text(
                Strings.education,
                style: CustomStyler.educationStyle,
              ),
              Text(
                Strings.donateForEducation,
                style: CustomStyler.donateTitleStyle,
              ),
            ],
          )
        ],
      ),
    );
  }

  _amountWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: mainStart,
      crossAxisAlignment: crossStart,
      children: [
        TextLabelsWidget(
          textLabels: Strings.amount,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
          child: AmountInputTextFieldWidget(
              controller: _controller.enterAmountController,
              hintText: Strings.amountMoney,
              backgroundColor: CustomColor.primaryBackgroundColor,
              hintTextColor: CustomColor.textColor),
        ),
        addVerticalSpace(10.h),
      ],
    );
  }

  _amountSelectorWidget(BuildContext context) {
    return const DonateSelectorWidget();
  }

  _messageWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: mainStart,
      crossAxisAlignment: crossStart,
      children: [
        TextLabelsWidget(
          textLabels: Strings.message,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
          child: DescriptionInputTextFieldWidget(
            hintText: Strings.optional,
            maxLine: 4,
            hintTextColor: CustomColor.whiteColor.withOpacity(0.5),
            backgroundColor: CustomColor.primaryBackgroundColor,
            controller: _controller.messageController,
          ),
        ),
        addVerticalSpace(10.h),
      ],
    );
  }



  _proceedButtonWidget(BuildContext context) {
    return PrimaryButtonWidget(
      title: Strings.proceed,
      onPressed: () {
        Get.toNamed(Routes.paymentMethodScreen);
      },
      borderColor: CustomColor.primaryColor,
      backgroundColor: CustomColor.primaryColor,
      textColor: CustomColor.whiteColor,
    );
  }
}
