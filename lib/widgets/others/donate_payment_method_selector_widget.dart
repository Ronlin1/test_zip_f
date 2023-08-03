import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:efunding/controller/transaction_controller.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/custom_style.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/size.dart';
import 'package:efunding/utils/strings.dart';
import 'package:efunding/widgets/labels/text_labels_widget.dart';

class DonatePaymentMethodSelectorWidget extends StatelessWidget {
  DonatePaymentMethodSelectorWidget({Key? key}) : super(key: key);
  final _controller = Get.put(TransactionController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: mainStart,
      crossAxisAlignment: crossStart,
      children: [
        TextLabelsWidget(
          textLabels: Strings.paymentMethod,
        ),
        _paymentMethodSelectorWidget(context, FontAwesomeIcons.wallet,
            Strings.myWallet, Strings.myWallet),
        addVerticalSpace(10.h),
        _paymentMethodSelectorWidget(context, FontAwesomeIcons.ccStripe,
            Strings.stripe, Strings.stripe),
        addVerticalSpace(10.h),
        _paymentMethodSelectorWidget(context, FontAwesomeIcons.ccVisa,
            Strings.carNumber, Strings.carNumber),
        addVerticalSpace(10.h),
      ],
    );
  }

  _paymentMethodSelectorWidget(BuildContext context, IconData icon,
      String paymentMethodName, String selectorIndex) {
    return Container(
      decoration: BoxDecoration(
          color: CustomColor.primaryBackgroundColor,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: CustomColor.whiteColor)),
      margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
      padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.1),
      child: Row(
        mainAxisAlignment: mainSpaceBet,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.2),
                child: Icon(
                  icon,
                  color: CustomColor.whiteColor,
                ),
              ),
              addHorizontalSpace(10.w),
              Text(
                paymentMethodName,
                style: CustomStyler.myWalletStyle,
              )
            ],
          ),
          Obx(
            () => Radio(
              activeColor: CustomColor.primaryColor,
              hoverColor: CustomColor.primaryColor,
              value: selectorIndex,
              groupValue: _controller.selectedPaymentMethod.value,
              onChanged: (value) {
                _controller.onChangeLanguage(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
