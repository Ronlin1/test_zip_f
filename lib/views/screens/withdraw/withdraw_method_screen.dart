import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:efunding/routes/routes.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/custom_style.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/size.dart';
import 'package:efunding/utils/strings.dart';
import 'package:efunding/widgets/buttons/back_button_widget.dart';
import 'package:efunding/widgets/buttons/primary_button_widget.dart';
import 'package:efunding/widgets/others/payment_method_slider_widget.dart';

class WithdrawMethodScreen extends StatelessWidget {
  const WithdrawMethodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      appBar: AppBar(
        title: Text(
          Strings.withdrawMethod,
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
        PaymentMethodSliderWidget(),
        Column(
          children: [
            _textWidget(context, Strings.limit, Strings.limit),
            _textWidget(context, Strings.charge, Strings.chargeAmount),
            _textWidget(context, Strings.processingTime, Strings.processingTimeAmount)
          ],
        ),
        _proceedButtonWidget(context),
      ],
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

  _proceedButtonWidget(BuildContext context) {
    return PrimaryButtonWidget(
      title: Strings.proceed,
      onPressed: () {
        Get.toNamed(Routes.withdrawScreen);
      },
      borderColor: CustomColor.primaryColor,
      backgroundColor: CustomColor.primaryColor,
      textColor: CustomColor.whiteColor,
    );
  }
}
