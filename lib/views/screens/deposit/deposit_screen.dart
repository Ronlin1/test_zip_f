import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:efunding/controller/deposit_controller.dart';
import 'package:efunding/routes/routes.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/custom_style.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/size.dart';
import 'package:efunding/utils/strings.dart';
import 'package:efunding/widgets/buttons/back_button_widget.dart';
import 'package:efunding/widgets/buttons/primary_button_widget.dart';
import 'package:efunding/widgets/inputs/amount_input_text_widget.dart';
import 'package:efunding/widgets/labels/text_labels_widget.dart';

class DepositScreen extends StatelessWidget {
  DepositScreen({Key? key}) : super(key: key);
  final _controller = Get.put(DepositController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      appBar: AppBar(
        title: Text(
          Strings.depositAmount,
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

        _amountWidget(context),
        addVerticalSpace(10.h),
        Column(
          children: [
            _textWidget(context, Strings.depositMethod, Strings.paypal),
            _textWidget(context, Strings.limit, Strings.limitMoney),
            _textWidget(context, Strings.charge, Strings.chargeAmount),
            _textWidget(context, Strings.processingTime, Strings.processingTimeAmount)
          ],
        ),
        _proceedButtonWidget(context),
      ],
    );
  }


  _amountWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: mainStart,
      crossAxisAlignment: crossStart,
      children: [
       TextLabelsWidget(textLabels: Strings.amount),
        Container(
          margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),

          child: AmountInputTextFieldWidget(
            hintText: Strings.amountMoney,
            iconData: Icons.attach_money,
            hintTextColor: CustomColor.whiteColor.withOpacity(0.4),
            backgroundColor: CustomColor.primaryBackgroundColor,
            controller: _controller.amountController,
          ),
        ),
      ],
    );
  }


  _proceedButtonWidget(BuildContext context) {
    return PrimaryButtonWidget(
      title: Strings.proceed,
      onPressed: () {
        Get.toNamed(Routes.depositPreviewScreen);
      },
      borderColor: CustomColor.primaryColor,
      backgroundColor: CustomColor.primaryColor,
      textColor: CustomColor.whiteColor,
    );
  }






  _textWidget(BuildContext context, String title, String description) {
    return Container(
      margin: EdgeInsets.all(Dimensions.marginSize * 0.5),
      child: Row(
        mainAxisAlignment: mainSpaceBet,
        children: [
          Text(
            title,
            style: CustomStyler.foundationStyle,
          ),
          Text(
            description,
            style: CustomStyler.foundationNameStyle,
          )
        ],
      ),
    );
  }

}
