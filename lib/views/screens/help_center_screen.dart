import 'package:flutter/material.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/custom_style.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/size.dart';
import 'package:efunding/utils/strings.dart';
import 'package:efunding/widgets/buttons/back_button_widget.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      appBar: AppBar(
        title: Text(
          Strings.helpCenter,
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
        _helpCenterQnWidget(context, Strings.qnOne, () {}),
        _helpCenterQnWidget(context, Strings.qnTwo, () {}),
        _helpCenterQnWidget(context, Strings.qnThree, () {}),
        _helpCenterQnWidget(context, Strings.qnFour, () {}),
        _helpCenterQnWidget(context, Strings.qnFive, () {}),
      ],
    );
  }

  _helpCenterQnWidget(
    BuildContext context,
    String question,
    VoidCallback onPressed,
  ) {
    return Container(
      margin: EdgeInsets.all(Dimensions.marginSize * 0.3),
      padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.3),
      child: Row(
        mainAxisAlignment: mainSpaceBet,
        crossAxisAlignment: crossCenter,
        children: [
          Expanded(
            child: Text(
              question,
              style: CustomStyler.helpCenterQnStyle,
            ),
          ),
          IconButton(
              onPressed: onPressed,
              icon: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: CustomColor.whiteColor,
              ))
        ],
      ),
    );
  }
}
